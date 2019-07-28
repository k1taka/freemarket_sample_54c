require 'rails_helper'

describe ItemsController do
  describe "GET #new" do
    it "renders the :item template" do
      get :new, params: {id: 1}
    end
  end

end
