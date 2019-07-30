require 'rails_helper'

describe ItemsController, type: :controller do

  describe 'GET #index' do
    it "populates an array of tweets ordered by created_at DESC" do
      get :index
      expect(response).to render_template :index
    end
  end

  describe "GET #new" do
    it "renders the :new template" do
      get :new
      expect(response).to render_template :new
    end
  end

  describe "GET #show" do
    # 正常なレスポンスか？
    it "responds successfully" do
      item = create(:item)
      user = create(:user)
      get :show, params: {id: item}
      expect(response).to render_template :show  
    end
    # 200レスポンスが返ってきているか？
    it "returns a 200 response" do
      item = create(:item)
      user = create(:user)
      get :show, params: {id: item}
      expect(response).to have_http_status "200"
    end
  end

  # item.rbの14行目のselleridの記述にoptional trueを追加する必要あり
  describe 'GET #edit' do
    it "assigns the requested item to @item" do
      item = create(:item)
      user = create(:user)
      get :edit, params: { id: item}
      expect(assigns(:item)).to eq item
    end
    it "renders the :edit template" do
      item = create(:item)
      user = create(:user)
      get :edit,params: {id:item}
      expect(response).to render_template :edit      
    end
  end

end