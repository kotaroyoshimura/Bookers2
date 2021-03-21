class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @book = Book.new
    #@books = @user.books.page(params[:page]).reverse_order
  end

  def edit
  end

  def index
    @user = current_user
    @book = Book.new
  end

  def destroy
    book = Book.find(params[:id])
    book.destroy
    redirect_to books_path
  end


  private

end
