class BooksController < ApplicationController
  def show
    @user = User.find(params[:id])
    @book = Book.new
    @books = Book.all
  end

  def create
    book = Book.new(book_params)
    book.save
    redirect_to books_path
  end

  def index
    @user = current_user
    @book = Book.new
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def book_params
    params.require(:book).permit(:title,:body)
  end
end
