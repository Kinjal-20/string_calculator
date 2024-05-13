require 'string_calculator'
RSpec.describe StringCalculator do
  context 'single number' do
    it 'returns 0 for empty string' do
      expect(StringCalculator.add('')).to eq(0)
    end

    it "returns 1 for '1'" do
      expect(StringCalculator.add('1')).to eq(1)
    end

    it "returns 2 for '2'" do
      expect(StringCalculator.add('2')).to eq(2)
    end
  end  
end