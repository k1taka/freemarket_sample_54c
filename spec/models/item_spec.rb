require 'rails_helper'

describe Item do
  describe "#create" do
    it "is invalid without a name" do
      item = build(:item , name: "")
      item.valid?
      expect(item.errors[:name]).to include("can't be blank")
    end

    it "is invalid without a description" do
      item = build(:item , description: "")
      item.valid?
      expect(item.errors[:description]).to include("can't be blank")
    end

    it "is invalid without a category_id" do
      item = build(:item , category_id: "")
      item.valid?
      expect(item.errors[:category_id]).to include("can't be blank")
    end

    # 特定の条件でpresence: true
    it "is invalid without a size_id" do
      item = build(:item , size_id: "")
      item.valid?
      expect(item.errors[:size_id]).to include("can't be blank")
    end

    it "is invalid without a condition_id" do
      item = build(:item , condition_id: "")
      item.valid?
      expect(item.errors[:condition_id]).to include("can't be blank")
    end
    
    it "is invalid without a shipping_payer_id" do
      item = build(:item , shipping_payer_id: "")
      item.valid?
      expect(item.errors[:shipping_payer_id]).to include("can't be blank")
    end

    it "is invalid without a shipping_way_id" do
      item = build(:item , shipping_way_id: "")
      item.valid?
      expect(item.errors[:shipping_way_id]).to include("can't be blank")
    end

    it "is invalid without a shipping_address_id" do
      item = build(:item , shipping_address_id: "")
      item.valid?
      expect(item.errors[:shipping_address_id]).to include("can't be blank")
    end

    it "is invalid without a shipping_day_id" do
      item = build(:item , shipping_day_id: "")
      item.valid?
      expect(item.errors[:shipping_day_id]).to include("can't be blank")
    end

    it "is invalid without a price" do
      item = build(:item , price: "")
      item.valid?
      expect(item.errors[:price]).to include("can't be blank")
    end

    it "is invalid without a status" do
      item = build(:item , status: "")
      item.valid?
      expect(item.errors[:status]).to include("can't be blank")
    end


  end
end
