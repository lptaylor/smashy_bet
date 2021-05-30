require 'rails_helper'

RSpec.describe Fighter, type: :model do
    it 'exists' do
      fighter = Fighter.new(name: "testname", character: "testchar", tier: 'C')

      expect(fighter).to be_a(Fighter)
    end
end
