require 'spec_helper'

describe User, 'definition' do
  subject{ build(:user) }

  it "should have a valid factory" do
    FactoryGirl.build(:user).should be_valid
  end

  context "fields" do
    it {should have_db_column(:first_name).of_type(:string)}
    it {should have_db_column(:last_name).of_type(:string)}
    it {should have_db_column(:email).of_type(:string)}
  end

  context "validation" do
    it { should validate_presence_of(:email) }
  end

end