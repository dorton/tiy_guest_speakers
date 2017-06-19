class Api::TalksController < Api::ApiController

  before_action :set_talk, only: [:show, :update, :destroy]

  before_action do
    request.format = :json
  end

  def index
    @talks = Talk.all.sort_by { |a| a.date }.reverse
  end

  def show
  end

  def create
    @talk = Talk.new(talk_params)
    if @talk.save
      render :show, status: :created, location: @talk
    else
      render json: @talk.errors, status: :unprocessable_entity
    end
  end

  def update
    if @talk.update(talk_params)
      render :show, status: :ok, location: @talk
    else
      render json: @talk.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @talk.destroy
    format.json { head :no_content }
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_talk
      @talk = Talk.find_by!(id: params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def talk_params
      params.require(:talk).permit(semester_ids: [], speaker_ids: [])
    end
end
