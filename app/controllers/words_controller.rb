# frozen_string_literal: true

class WordsController < ApplicationController
  before_action :set_word, only: [:show]

  def index
    @words = Word.all
    @word = Word.new
  end

  def show
    @words = Word.all
    @word = Word.new
    @word = Word.find_by_slug(params[:id])
  end

  def new
    @word = Word.new
  end

  def create
    @word = Word.new(word_params)
    @word.save
    flash.keep[:messages] = @word.errors.full_messages[0]

    redirect_to @word
  end

  private

  def set_word
    @word = Word.find_by_slug(params[:id])
  end

  def word_params
    params.require(:word).permit(:word, :sub_length, :sub_word)
  end
end
