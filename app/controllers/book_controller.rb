class BookController < ApplicationController
    def show
        @book = Book.find_by id: params[:id]
    end

    def index
        @books = Book.all
    end

    def edit
        @book = Book.find_by id: params[:id]
        @book.title = params[:book][:title]
        @book.photo_url = params[:book][:photo_url]
        @book.price = params[:book][:price]
        @book.author_id = params[:book][:author_id]

        if @book.save
            redirect_to edit_book_path
        else
            render :edit
        end
    end

    def create
        @book = Book.new
        @book.title = params[:book][:title]
        @book.photo_url = params[:book][:photo_url]
        @book.price = params[:book][:price]
        @book.author_id = params[:book][:author_id]

        if @book.save
            redirect_to root_path
        else
            render :new
        end
    end


    def delete
        @book = Book.find_by id: params[:id]
        @book.destroy
        redirect_to root_path
    end

    def update
        @book = Book.find_by id: params[:id]
        @book.title = params[:book][:title]
        @book.photo_url = params[:book][:photo_url]
        @book.price = params[:book][:price]
        @book.author_id = params[:book][:author_id]

        if @book.save
            redirect_to edit_book_path
        else
            render :edit
        end
    end
end


class BookController < ApplicationController










end
