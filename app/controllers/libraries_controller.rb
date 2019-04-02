class LibrariesController < ApplicationController
  def welcome
    @title = 'Welcome, my friend!'
  end

  def index
    @libraries = Library.all
  end

  def create
    @library=Library.create(library_params)
    if @library.errors.empty?
      redirect_to library_path(@library)
    else
      render "new"
    end
  end

  def new

  end

  def show
  unless @library=Library.find(params[:id])
    render text: "Page not found"
  end
  end

  def edit
    @library=Library.find(params[:id])
  end

  def update
    @library=Library.find(params[:id])
    @library.update_attributes(library_params )
    if @library.errors.empty?
      redirect_to library_path(@library)
    else
      render "edit"
    end
  end


  private

  def library_params
    params.require(:library).permit(:library_id, :number_library, :name_library, :address_library)
  end
end
