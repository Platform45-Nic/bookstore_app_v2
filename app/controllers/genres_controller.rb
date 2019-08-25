class GenresController < ApplicationController

  def index
    @genres = Genre.all
  end

  def show
    @genre = Genre.all
    @book = Book.all.find(current_user.id)
    @genre.each do
      get_book_using_genre_id(@book)
    end
  end

  def new
    @genre = Genre.new(creator: current_user)
  end

  def create
    @genre = Genre.new(genre_params)
    if @genre.save
      flash[:success] = "You have created a Genre"
      redirect_to genres_path
    else
      render 'new'
    end
  end

  private

    def genre_params
      params.require(:genre).permit(:name, :creator_id)
    end

    def get_book_using_genre_id(selected_genre)
      @book = Book.find(selected_genre).title
    end

end
