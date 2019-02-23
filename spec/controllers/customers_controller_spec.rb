require 'rails_helper'

RSpec.describe CustomersController, type: :controller do
  describe "customers# action" do
    it "should successfully show the page" do
      get :index
      expect(response).to have_http_status(:success)
    end

  end

  describe "customers#new action" do
    it "should sucessfully show the new form" do
      get :new
      expect(response).to have_http_status(:success)

    end
  end

  describe "customers#create action" do
    it "should successfully add a new customer to the datable" do
      post :create, params: { customer: {name: 'Metrie' , address_1: "123 St", state: "BC", postal:"12345"}}
      expect(response).to redirect_to root_path

      customer = Customer.last
      expect(customer.name).to eq('Metrie')
      expect(customer.address_1).to eq('123 St')
      expect(customer.state).to eq('BC')
      expect(customer.postal).to eq('12345')
    end

    it "should properly deal with validation errors" do
      post :create, params: {customer: {name: ""}}
      expect(response).to have_http_status(:unprocessable_entity)
      expect(Customer.count).to eq 0
    end
  end
end
