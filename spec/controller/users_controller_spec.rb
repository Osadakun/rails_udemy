require 'rails_helper'

RSpec.describe UsersController, type: :controller do
  describe 'GET #new' do
    before { get : new }

    it '200' do
      expect(responce).to have_http_status(:ok)
    end

    it 'new' do
      expect(responce).to render_template :new
    end

    it 'new2' do
      expect(assigns(:user)).to be_a_new User
    end
  end
end