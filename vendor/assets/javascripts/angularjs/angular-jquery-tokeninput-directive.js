!(function (ng) {
    'use strict';
    ng.module('jquery', ['jquery.directives']);

    var jqdir = ng.module('jquery.directives', []);

    function tokenInput($parse, $timeout) {
        return {
            restrict: 'A',
            require: '?ngModel',
            replace: true,
            link: function (scope, element, attrs) {
                var options = {
                   crossDomain: false,
                   ajaxHeaders: {
                     Authorization: 'Token token="bTfWlda7/5xr07WfViYgrdWoKzhj9S3xi4Ebw6b/"'
                   },
                   preventDuplicates: true,
                   tokenValue: "name",
                   theme: "blinkjobs",
                   zindex: 9999
                };

                // Add from scope always if exists a 'tokenInput' value
                if (scope['tokenInput']) {
                    console.log(scope['tokenInput']);
                    ng.extend(options, scope['tokenInput']);
                }

                // Add from scope always if exists a 'tokenInput_' + id value
                if (attrs.id && scope['tokenInput_' + attrs.id]){
                    ng.extend(options, scope['tokenInput_' + attrs.id]);
                }

                if (attrs.ngModel) {
                    var apply = function (results) {
                        scope.$apply(function applyTokenInputToModels() {
                            var tokenVal = element.tokenInput("get");
                            $parse(attrs.ngModel).assign(scope, tokenVal);
                        });
                    };
                    options.onAdd = apply;
                    options.onDelete = apply;

                    var clear = function(newValue, oldValue) {
                        if (!newValue){
                            $timeout(function(){
                                element.tokenInput("clear");
                            });
                        }
                    };

                    scope.$watch(attrs.ngModel, clear);
                }

                $(element).tokenInput(scope.$eval(attrs['tokenInput']), options);

            }
        };
    }

    jqdir.directive('tokenInput', ['$parse', '$timeout', tokenInput]);

})(angular);
