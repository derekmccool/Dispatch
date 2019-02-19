require 'rails_helper'

RSpec.describe CustomersController, type: :controller do
  describe "customers# action" do
    it "should successfully show the page" do
      get :index
      expect(response).to have_http_status(:success)
    end

  end
end
