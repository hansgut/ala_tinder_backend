class ImagesController < ApplicationController
  before_action :set_image, only: %i[show edit update destroy]

  def show
    render json: { url: url_for(@image.file) }
  end

  def create
    @image = @current_user.gallery.images.build(image_params)
    if @image.save
      render json: { message: 'Image was added.' }, status: :ok
    else
      render json: { errors: @image.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def edit; end

  def update
    if @image.update(image_params)
      render json: { message: 'Image was updated.' }, status: :ok
    else
      render json: { error: @image.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    @image.destroy
  end

  private

  def image_params
    params.permit(:position, :file)
  end

  def set_image
    @image = Image.find(params[:id])
  end
end
