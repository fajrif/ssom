require 'spec_helper'

describe BlogsController do
  describe "routing" do
    it 'routes to #show' do
      expect(get('/blogs/1')).to route_to :controller => 'blogs', :action => 'show', :id => '1'
    end

    it 'routes to #index' do
      expect(get('/blogs')).to route_to :controller => 'blogs', :action => 'index'
    end
  end
end
