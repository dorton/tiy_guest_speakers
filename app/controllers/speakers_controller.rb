class SpeakersController < InheritedResources::Base

def index

    recent_semester = Semester.last
    @this_cohort = Speaker.where(semester_id: recent_semester)


end



  private



    def speaker_params
      params.require(:speaker).permit(:name, :date, :pic, :company, :email, :title, :semester_id)
    end
end
