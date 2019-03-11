require 'spec_helper'

describe Category do
  it "should have fields" do
    is_expected.to have_db_column(:name)
  end

  it "should validate precence of" do
    is_expected.to validate_presence_of :name
  end

  it "should validate uniqueness of" do
		is_expected.to validate_uniqueness_of(:name).ignoring_case_sensitivity
  end

  it "should have relations" do
		is_expected.to have_many(:blogs)
  end
end
