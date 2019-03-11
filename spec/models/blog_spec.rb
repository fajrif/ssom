require 'spec_helper'

describe Blog do
  it "should have fields" do
    is_expected.to have_db_column(:title)
    is_expected.to have_db_column(:image)
    is_expected.to have_db_column(:description)
    is_expected.to have_db_column(:category_id)
  end

  it "should validate precence of" do
    is_expected.to validate_presence_of :title
    is_expected.to validate_presence_of :description
    is_expected.to validate_presence_of :category_id
  end

  it "should validate uniqueness of" do
		is_expected.to validate_uniqueness_of(:title).ignoring_case_sensitivity
  end

  it "should have relations" do
		is_expected.to belong_to(:category)
  end
end
