require 'rails_helper'

RSpec.describe Strain, type: :model do
  describe "registration" do
    context "wrong inputs" do
      it "is not valid with 'nil' as value" do
        strain = Strain.create(name: nil)
        expect(strain).to_not be_valid
      end

      it "is not valid with 'nil' as value" do
        strain = Strain.create(name: "")
        expect(strain).to_not be_valid
      end

      it "is not valid with if already exists" do
        strain = Strain.create(name: "Carmenere")
        repeated_strain = Strain.create(name: "Carmenere")
        expect(repeated_strain).to_not be_valid
      end

    end
  end
end
