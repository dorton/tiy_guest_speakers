class SpeakersController < InheritedResources::Base

def index

    @speakers = Speaker.all

end



  private



    def speaker_params
      params.require(:speaker).permit(:name, :date, :pic, :company, :email, :title, :semester_id)
    end
end
