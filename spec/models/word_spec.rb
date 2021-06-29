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

    it 'should save successfully' do
      word = Word.new(word: 'abcabcbb', sub_word: 'abc').save
      expect (word) == true
    end

    it 'should not save successfully' do
      word = Word.new(word: 'abcabcbb', sub_word: 'ac').save
      expect (word) == false
    end

    it 'should save successfully' do
      word = Word.new(word: 'abcabcbb', sub_length: '3').save
      expect (word) == true
    end

    it 'should not save successfully' do
      word = Word.new(word: 'abcabcbb', sub_length: '5').save
      expect (word) == false
    end
  end
end
