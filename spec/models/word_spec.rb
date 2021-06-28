# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Word, type: :model do
  context 'validation test' do
    it 'makes sure maxinim length is 35' do
      word = Word.new(word: 'test case test case test case test case test case test case test case').save
      expect(word).to eq(false)
    end

    it 'should save successfully' do
      word = Word.new(word: 'Testcase').save
      expect(word) == true
    end
  end
end
