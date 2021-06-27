class WordsController < ApplicationController
    def index
        @words = Word.all
        @word = Word.new
    end
    
    def new
        @word = Word.new
    end

    def show
    end

    def create
        @word = Word.new(word_params)
        if @word.save

            redirect_to words_path
          else
            render 'new'
          end
    end

    private
    def set_word
        @word = Word.find(params[:id])
      end
  
    def word_params
      params.require(:word).permit(:word, :length, :sub_word)
    end
  
end
