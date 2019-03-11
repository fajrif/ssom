require 'spec_helper'

describe ContactsController do
  describe "routing" do
    it 'routes to #show' do
      expect(get('/contact')).to route_to('contacts#show')
    end

    it 'routes to #create' do
      expect(post('/contact')).to route_to('contacts#create')
    end
  end
end
