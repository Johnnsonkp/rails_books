require 'rails_helper'

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
