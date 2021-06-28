class WordsController < ApplicationController
    before_action :set_word, only: %i[ show edit update destroy ]
    
   def index

@words = Word.all
@word = Word.new
end
    
    def show
      @words = Word.all
      @word = Word.new
    end

    def new
      @word = Word.new
    end

    def create
        @word = Word.new(word_params)
        if @word.save
          flash[:notice] = "Word successfully created"
           redirect_to @word
          else
            flash.now[:messages] = @word.errors.full_messages[0]
            render 'new'
          end
    end

    private
 
    def set_word
    #   @word = Word.find(params[:id])
    @word = Word.find_by_slug(params[:id])
    end

  
    def word_params
      params.require(:word).permit(:word, :sub_length, :sub_word)
    end
end
  