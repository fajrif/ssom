require 'spec_helper'

describe Admin do
  it "should have fields" do
    is_expected.to have_db_column(:email)
  end

  it "should validate precence of" do
    is_expected.to validate_presence_of :email
  end

  it "should validate uniqueness of" do
		is_expected.to validate_uniqueness_of(:email).ignoring_case_sensitivity
  end

end
