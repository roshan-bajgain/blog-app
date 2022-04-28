require 'rails_helper'

RSpec.describe 'posts', type: :request do
  describe 'GET #index' do
    before(:each) do
      get '/users/20/posts'
    end

    it 'GET requests response status was correct' do
      expect(response).to have_http_status(:ok)
    end

    it 'response body includes correct placeholder text' do
      expect(response.body).to include('Here is a list of given user')
    end

    it 'renders a correct template' do
      expect(response).to render_template(:index)
    end
  end
  describe 'GET #show' do
    before(:each) do
      get '/users/24'
    end

    it 'GET requests response status was correct' do
      expect(response).to have_http_status(:ok)
    end

    it 'response body includes correct placeholder text' do
      expect(response.body).to include('Here is a list of posts for a given user')
    end

    it 'renders a correct template' do
      expect(response).to render_template(:show)
    end
  end
  describe 'GET #post' do
  before(:each) do
    get '/users/55/posts/66'
  end

  it 'GET requests response status was correct' do
    expect(response).to have_http_status(:ok)
  end

  it 'response body includes correct placeholder text' do
    expect(response.body).to include('Here is a list of posts for a given user')
  end

  it 'renders a correct template' do
    expect(response).to render_template(:post)
  end
end
end