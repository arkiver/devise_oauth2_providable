require 'spec_helper'

describe Devise::Oauth2Providable::AuthorizationsController do
  describe 'routing' do
    it 'routes POST /oauth2/authorizations' do
      post('/oauth2/authorizations').should route_to(:controller => 'devise/oauth2_providable/authorizations', :action => 'create')
    end
    it 'routes GET /oauth2/authorize' do
      get('/oauth2/authorize').should route_to(:controller => 'devise/oauth2_providable/authorizations', :action => 'new')
    end
    pending 'routes POST /oauth2/authorize' do
      #FIXME: this is valid, but the route is not being loaded into the test
      post('/oauth2/authorize').should route_to(:controller => 'devise/oauth2_providable/authorizations', :action => 'new')
    end
  end
end
