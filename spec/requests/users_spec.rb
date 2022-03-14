require 'rails_helper'

RSpec.describe 'Users', type: :request do
  describe 'POST /users' do
    it 'register new user' do
      post users_path, params: { email: 'test@test.com', name: 'Test', password: '123123' }
      expect(response).to have_http_status(201)
    end

    it 'not register if email has taken' do
      User.create(email: 'test@test.com', name: 'Test', password: '123123')
      post users_path, params: { email: 'test@test.com', name: 'Test', password: '123123' }
      expect(response).to have_http_status(422)
    end
  end
end
