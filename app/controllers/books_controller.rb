class BooksController < ApplicationController
  def show
    @user = User.find(params[:id])
    @book = Book.new
    @books = Book.all
  end

  def create
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
end
