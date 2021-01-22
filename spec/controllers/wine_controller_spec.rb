require 'rails_helper'

RSpec.describe WinesController, type: :controller do

  describe "GET index" do
    it "returns a 200" do
      get :index
      expect(response).to have_http_status(:ok)
    end

    it "renders the index template" do
      get :index
      expect(response).to render_template("index")
    end

    it "displays wines" do
      @wines = Wine.all
      allow(Wine).to receive(:all).and_return(@wines)
      get :index
      expect(assigns(:wines)).to match_array(@wines)
    end
  end

  describe "GET show" do
    before { 
      @wine1 = Wine.create!(name: 'Test Wine')
      test_admin = Admin.create(email:'test@test.cl', password: 123456, password_confirmation: 123456)
      sign_in :admin, test_admin
    }

    it "renders the show template" do
      get :show, params: { id: @wine1.id }
      expect(response).to render_template :show
    end
  end

end
