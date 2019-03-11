require 'spec_helper'

describe PortfoliosController do
  describe "routing" do
    it 'routes to #show' do
      expect(get('/portfolios/1')).to route_to :controller => 'portfolios', :action => 'show', :id => '1'
    end

    it 'routes to #index' do
      expect(get('/portfolios')).to route_to :controller => 'portfolios', :action => 'index'
    end
  end
end
