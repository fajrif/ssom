# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path
# Rails.application.config.assets.paths << Emoji.images_path

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in app/assets folder are already added.
# Rails.application.config.assets.precompile += %w( search.js )
Rails.application.config.assets.precompile += %w( admin.css admin.js jquery-fileupload/vendor/tmpl.js jquery-fileupload/vendor/load-image.js jquery-fileupload/jquery.iframe-transport.js jquery-fileupload/jquery.iframe-transport.js jquery-fileupload/jquery.fileupload.js jquery-fileupload/jquery.fileupload-ui.js jquery-fileupload/vendor/jquery.ui.widget.js jquery-fileupload/locale.js ckeditor/* font-awesome.min.css ElegantIcons.eot ElegantIcons.woff ElegantIcons.ttf ElegantIcons.svg BEBAS.ttf)

Rails.application.config.assets.paths << Rails.root.join('app', 'assets', 'fonts')
Rails.application.config.assets.precompile += %w( .svg .eot .woff .ttf )
