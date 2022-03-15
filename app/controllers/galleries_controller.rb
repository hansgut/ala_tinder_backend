class GalleriesController < ApplicationController

  def show
    @gallery = Gallery.find(params[:id])
    render json: @gallery
  end

end
