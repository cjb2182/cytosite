class ImagesController < ApplicationController

  def show
    @image = Image.find(params[:id])
  end

  def new
    @image = Image.new
  end

  def index
    @images = Image.all
  end

end
