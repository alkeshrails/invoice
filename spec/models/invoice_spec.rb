require 'rails_helper.rb'

RSpec.describe Invoice, type: :model do

#   subject {Invoice.new(product_name: "Model product", amount: 10)}

#   before {subject.save}

  describe "Invoice model" do

    # it "product name should be present" do
    #   subject.product_name = nil
    #   expect(subject).to_not be_valid
    # end

    # it "amount should be present" do
    #   subject.amount = nil
    #   expect(subject).to_not be_valid
    # end

    it { should validate_presence_of(:product_name) }
    it { should validate_presence_of(:amount) }

  end
end