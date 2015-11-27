require 'rails_helper'

RSpec.describe AdminController, :type => :controller do

  describe "GET dashboard" do
    it "returns http success" do
      get :dashboard
      expect(response).to be_success
    end
  end

  describe "GET stats" do
    it "returns http success" do
      get :stats
      expect(response).to be_success
    end
  end

  describe "GET financials" do
    it "returns http success" do
      get :financials
      expect(response).to be_success
    end
  end

  describe "GET settings" do
    it "returns http success" do
      get :settings
      expect(response).to be_success
    end
  end

end
