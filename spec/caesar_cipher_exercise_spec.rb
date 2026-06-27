require 'spec_helper'
require_relative '../exercise/caesar_cipher_exercise'

RSpec.describe 'Caesar Cipher Exercise' do

  describe 'Number positive' do
    it 'returns a string with each letter shifted by 3' do
      expect(caesar_cipher('hello', 3)).to eq('khoor')
    end
    xit 'returns a string with each letter shifted by 5' do
      expect(caesar_cipher('hello', 5)).to eq('mjqqt')
    end
    xit 'returns a string with each letter shifted by 7' do
      expect(caesar_cipher('hello', 7)).to eq('olssv')
    end
  end

  describe 'Number negative' do
    xit 'returns a string wxith each letter shifted by -3' do
      expect(caesar_cipher('hello', -3)).to eq('ebiil')
    end
    xit 'returns a string wxith each letter shifted by -5' do
      expect(caesar_cipher('hello', -5)).to eq('cnggj')
    end
    xit 'returns a string wxith each letter shifted by -7' do
      expect(caesar_cipher('hello', -7)).to eq('axxxw')
    end
  end

  describe 'Number not a number' do
    xit 'returns a warning message when the shift value is a string' do
      expect(caesar_cipher('hello', 'abc')).to eq('Warning: Shift value must be an integer')
    end
    xit 'returns a string with each letter shifted by a number in string format' do
      expect(caesar_cipher('hello', '123')).to eq('okqqr')
    end
  end
end