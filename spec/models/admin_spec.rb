require 'spec_helper'

describe Admin do
  it "has a valid factory" do
    Fabricate.build(:admin).should be_valid
  end
end
