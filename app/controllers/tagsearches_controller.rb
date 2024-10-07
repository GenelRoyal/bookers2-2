class TagsearchesController < ApplicationController
  def search
    @model = Book
    @word = params[:contest]
    @books = Book.where("category LIKE?","%#{@word}%")
    render "tagsearches/tagsearch"
  end
end
