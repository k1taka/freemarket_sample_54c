require 'rails_helper'

describe UsersController, type: :controller do

  before do
    user = create(:user)
    sign_in user
  end



  describe "GET #index" do
    it "renders the :index template" do
      get :index
      expect(response).to render_template :index
    end
  end

  describe "GET #index" do
    it "renders the :index template" do
      get :index
      expect(response).to render_template :index
    end
  end

  describe "GET #logout" do
    it "renders the :logout template" do
      get :logout
      expect(response).to render_template :logout
    end
  end  

end