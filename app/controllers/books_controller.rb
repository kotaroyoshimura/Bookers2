class BooksController < ApplicationController
  def show
    @user = User.find(params[:id])
    @book = Book.new
    @books = Book.all
  end

  def create
    @book = Book.new(book_params)
    @book.user_id = current_user.id
    @book.save!
    redirect_to user_path(@book.user_id)
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
