require 'spec_helper'

describe HomeController do
  describe "routing" do
    it '/ to home#index' do
      expect(get('/')).to route_to :controller => 'home', :action => 'index'
    end

    it '/ to home#about' do
      expect(get('/about')).to route_to :controller => 'home', :action => 'about'
    end
  end
end
