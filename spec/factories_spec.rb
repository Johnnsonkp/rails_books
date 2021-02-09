require 'rails_helper'

FactoryBot.factories.map(&:name).each do |factory_name|
    describe "The #{factory_name} factory" do
        it "is valid" do
            expect(build(factory_name)).to be_valid
        end
    end
end


RSpec.describe "Author Factory" do 
    it "is valid" do
        expect(build(:author)).to be_valid
    end
    context "testing properties" do
        before(:all) do
            @author = build(:author)
        end

        it "has the right first name" do
            expect(@author.first_name).to eq "Michael"
        end

        it "has the right last name" do
            expect(@author.last_name).to eq "Crichton"
        end
    end
end

RSpec.describe "Address Factory" do 
    it "is valid" do
        expect(build(:address)).to be_valid
    end
    context "testing properties" do
        before(:all) do
            @address = build(:address)
        end

        it "has the right state" do
            expect(@address.state).to eq "California"
        end

        it "has the right postcode" do
            expect(@address.postcode).to eq "90403"
        end
    end

    context "testing association" do
        it "should be associated with our author factory" do
            address = build(:address)
            expect(address.author.first_name).to eq "Michael"
        end
    end

end
