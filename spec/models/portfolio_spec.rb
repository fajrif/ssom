require 'spec_helper'

describe Portfolio do
  it "should have fields" do
    is_expected.to have_db_column(:title)
    is_expected.to have_db_column(:history)
    is_expected.to have_db_column(:description)
  end

  it "should validate precence of" do
    is_expected.to validate_presence_of :title
    is_expected.to validate_presence_of :description
  end

  it "should validate uniqueness of" do
		is_expected.to validate_uniqueness_of(:title).ignoring_case_sensitivity
  end

  it "should have relations" do
		is_expected.to have_many(:pictures)
  end
end
