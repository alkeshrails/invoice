require 'rails_helper'
require 'pry'

RSpec.describe InvoiceController do

  let(:create_attributes) {
    { :invoice => {:product_name => "Test product", :amount => 20}}
  }

  let(:update_attributes) {
      {:invoice=> {:product_name => "Test product", :amount => 25}}
  }

 
  describe "Invoice" do
    before {Invoice.create! :product_name => "Test product", :amount => 10}
    
    it "new invoice" do
      get :new, params: {}
      expect(response).to render_template "new"
    end

    
    it "create invoice" do
      post :create, params: create_attributes
      expect(response).to redirect_to root_path
    end

    
    it "edit invoice" do
      get :new, params: {id: Invoice.last.id}
    end

    it "update invoice" do      
      put :update, params: update_attributes.merge!(:id => Invoice.last.id)
      expect(response).to redirect_to root_path
    end
  end
end