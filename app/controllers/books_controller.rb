# app/controllers/books_controller.rb

require 'kana_converter'

class BooksController < ApplicationController
  def index
    if params[:search].present?
      keywords = params[:search].split(/\s|　/)
      @books = Book.all

      keywords.each do |keyword|
        # キーワードを小文字に変換
        lowercase_keyword = keyword.downcase
        kana_keyword = KanaConverter.to_hiragana(keyword)
        
        @books = @books.where("LOWER(name) LIKE ? OR kana LIKE ?", "%#{lowercase_keyword}%", "%#{kana_keyword}%")
      end
    else
      @books = Book.all
    end
  end
end
