require 'spec_helper'

describe Banner do
  it "should have fields" do
    is_expected.to have_db_column(:title)
    is_expected.to have_db_column(:caption)
    is_expected.to have_db_column(:image)
  end

  it "should validate precence of" do
    is_expected.to validate_presence_of :title
    is_expected.to validate_presence_of :image
  end
end
