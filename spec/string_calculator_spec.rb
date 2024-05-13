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

  context 'two numbers' do
    it "returns 3 for the string '1,2'" do
      expect(StringCalculator.add('1,2')).to eq(3)
    end

    it "returns 200 for the string '100, 10'" do
      expect(StringCalculator.add('100,10')).to eq(110)
    end
  end
end