require 'rails_helper'

RSpec.describe 'AuthenticationControllers', type: :request do
  include JsonWebToken

  before do
    @user = FactoryBot.create(:user)
  end

  describe 'POST /login' do
    it 'returns 200 when login successful' do
      post auth_login_path, params: { email: 'test@test.com', password: '123123' }
      expect(response).to have_http_status(200)
    end

    it 'returns right token' do
      post auth_login_path, params: { email: 'test@test.com', password: '123123' }
      token = JSON.parse(response.body)['token']
      expect(jwt_decode(token)['user_id']).to eq(@user.id)
    end

  end
end
