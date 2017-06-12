class Api::SpeakersController < Api::ApiController

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
    @speaker = Speaker.find_or_initialize_by(email: params[:email])
    if @speaker.new_record?
      @speaker.name = params[:name]
      @speaker.save
    end
    talk = @speaker.talks.new
    talk.semester = Semester.last
    talk.date = params[:talk_date]
    talk.save!

      render json: @speaker
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
      params.require(:speaker).permit(:name, :pic, :company, :email, :title, :semester_id, :talk_date, talk_ids: [])
    end
end
