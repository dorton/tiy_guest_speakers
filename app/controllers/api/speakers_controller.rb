class Api::SpeakersController < ApplicationController

  before_action :set_speaker, only: [:show, :update, :destroy]

  before_action do
    request.format = :json
  end

  def index
    @speakers = Speaker.all
  end

  def show
  end

  def create
    @speaker = Speaker.new(speaker_params)
    if @speaker.save
      render :show, status: :created, location: @speaker
    else
      render json: @speaker.errors, status: :unprocessable_entity
    end
  end

  def update
    if @speaker.update(speaker_params)
      render :show, status: :ok, location: @speaker
    else
      render json: @speaker.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @speaker.destroy
    format.json { head :no_content }
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_speaker
      @speaker = Speaker.find_by!(id: params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def speaker_params
      params.require(:speaker).permit(:name, :date, :pic, :company, :email, :title, :semester_id)
    end
end
