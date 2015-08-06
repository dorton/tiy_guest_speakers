class SpeakersController < InheritedResources::Base

  private

    def speaker_params
      params.require(:speaker).permit(:name, :date, :pic, :company, :email, :title)
    end
end

