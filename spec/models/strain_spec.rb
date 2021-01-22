require 'rails_helper'

RSpec.describe Strain, type: :model do
  it "validates uniqueness of name" do
    Strain.create(name: 'unique name')
    should validate_uniqueness_of(:name)
  end

  it "must have a name" do  
    no_name_strain = Strain.create(name: "")
    no_name_strain.should_not be_valid
  end

  it "name not nil" do  
    nil_name_strain = Strain.create(name: nil)
    nil_name_strain.should_not be_valid
  end

  it "it has a name" do  
    test_strain = Strain.create(name: "Carmenere")
    test_strain.should be_valid
  end
  
end
