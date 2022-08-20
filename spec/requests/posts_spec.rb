require 'rails_helper'

RSpec.describe 'Posts Controller', type: :request do
  describe 'GET /users/:user_id/posts' do
    it 'is a success' do
      get '/users/2/postss'
      expect(response).to have_http_status(:ok)
    end
    it "renders 'index' template" do
      get '/users/2/posts'
      expect(response).to render_template('index')
    end
    it 'renders the User text' do
      get '/users/2/posts'
      expect(response.body).to include('List of posts')
    end
  end

  describe 'GET /users/:id/posts/:id' do
    it 'returns http success' do
      get '/users/20/posts/20'
      expect(response).to have_http_status(:success)
    end
    it 'renders the show template' do
      get '/users/20/posts/20'
      expect(response).to render_template('show')
    end
    it 'renders the Post text' do
      get '/users/20/posts/20'
      expect(response.body).to include('Show list of posts')
    end
  end
end
