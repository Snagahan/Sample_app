require 'rails_helper'

RSpec.describe PagesController, type: :controller do
  render_views

  describe "GET #home" do
    it "returns http success" do
      get :home
      expect(response).to have_http_status(:success)
    end
	
	it "doit avoir le bon titre" do
		get :home
		expect(response.body).to have_title("Accueil")
	end
								
  end

  describe "GET #contact" do
    it "returns http success" do
      get :contact
      expect(response).to have_http_status(:success)
    end
	
	it "doit avoir le bon titre" do
		get :contact
		expect(response).to have_selector("title",
							:content => "Contact")
	end
  end
  
  describe "GET #about" do
    it "returns http success" do
      get :about
      expect(response).to have_http_status(:success)
    end
	
	it "doit avoir le bon titre" do
		get :about
		expect(response).to have_selector("title",
							:content => "A Propos")
	end
  end

end
