require_relative '../../spec_helper'

class AuthSpec
  describe 'auth routes' do
    it 'should show a login page' do
      get '/'
      expect(last_response).to be_ok
      expect(last_response.body).to include 'login'
    end

    it 'should not login without an account' do
      post '/'
      expect(last_response).to be_redirect
      follow_redirect!
      expect(last_response.body).to include 'login'
    end

    it 'should have a signup page' do
      get '/signup'
      expect(last_response).to be_ok
      expect(last_response.body).to include 'name'
      expect(last_response.body).to include 'email'
      expect(last_response.body).to include 'password'
      expect(last_response.body).to include 'Register'
    end

    it 'should not create a new user if passwords dont match' do
      post '/signup', params = {name: "ivan", email: "ivan@ivan.com", password: "123", password_confirmation: "qwe"}
      expect(last_response).to be_redirect
      follow_redirect!
      expect(last_response.body).to include 'name'
      expect(last_response.body).to include 'email'
      expect(last_response.body).to include 'password'
      expect(last_response.body).to include 'Register'
    end

    it 'should redirect the new user to the home page after creating the account' do
      post '/signup', params = {name: "ivan", email: "ivan@ivan.com", password: "123", password_confirmation: "123"}
      expect(last_response).to be_redirect
      follow_redirect!
      expect(last_response.body).to include 'See my teams'
    end
  end
end