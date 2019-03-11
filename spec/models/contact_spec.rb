require 'spec_helper'

describe Contact do
  it "should have fields" do
    is_expected.to have_db_column(:name)
    is_expected.to have_db_column(:email)
    is_expected.to have_db_column(:subject)
    is_expected.to have_db_column(:message)
  end

  it "should validate precence of" do
    is_expected.to validate_presence_of :name
    is_expected.to validate_presence_of :email
    is_expected.to validate_presence_of :subject
    is_expected.to validate_presence_of :message
  end
end
