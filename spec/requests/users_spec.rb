require 'rails_helper'

RSpec.describe 'Users Controller', type: :request do
  describe 'GET #index' do
    it 'is a success' do
      get '/users'
      expect(response).to have_http_status(:ok)
    end
    it "renders 'index' template" do
      get '/users'
      expect(response).to render_template('index')
    end
    it 'renders the User text' do
      get '/users'
      expect(response.body).to include('List of users')
    end
  end

  describe 'GET /users/:id' do
    it 'returns http success' do
      get '/users/20'
      expect(response).to have_http_status(:success)
    end
    it 'renders the show template' do
      get '/users/20'
      expect(response).to render_template('show')
    end
    it 'renders the Post text' do
      get '/users/20'
      expect(response.body).to include('Show list of users')
    end
  end
end
