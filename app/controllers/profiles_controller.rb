class ProfilesController < ApplicationController
  before_action :set_profile, only: [:show, :update]

  def show
    render json: @profile
  end

  def update
    if @profile.update(profile_params)
      render json: { message: 'Profile was updated.' }, status: :ok
    else
      render json: { error: @profile.errors.full_messages }, status: :unprocessable_entity
    end
  end

  private

  def profile_params
    params.permit(:name, :birthday, :bio)
  end

  def set_profile
    @profile = Profile.find(params[:id])
  end
end
