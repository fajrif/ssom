require 'spec_helper'

describe Picture do
  it "should have fields" do
    is_expected.to have_db_column(:title)
    is_expected.to have_db_column(:description)
    is_expected.to have_db_column(:image)
    is_expected.to have_db_column(:portfolio_id)
  end

  it "should validate precence of" do
    is_expected.to validate_presence_of :title
    is_expected.to validate_presence_of :image
    is_expected.to validate_presence_of :portfolio_id
  end

  it "should have relations" do
		is_expected.to belong_to(:portfolio)
  end
end
