require 'rails_helper'


describe Vote do
  
  describe "validations" do
    describe "value validation" do
      it "only allow -1 or 1 as value" do
        expect (Vote.new(value: 1).to eq(true)
        expect (Vote.new(value: -1).to eq(true)
        expect (Vote.new(value: 2).to eq(false)
      end
    end
  end

end