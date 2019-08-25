class GenresController < ApplicationController

  def index
    @genres = Genre.all
  end

  def show
    @genre = Genre.find(params[:id])
  end

  def new
    @genre = Genre.new(creator: current_user)
  end

  def create
    @genre = Genre.new(genre_params)
    if @genre.save
      flash[:success] = "You have created a Genre"
      redirect_to @genre
    else
      render 'new'
    end
  end

  private

    def genre_params
      params.require(:genre).permit(:name, :creator_id)
    end

end
