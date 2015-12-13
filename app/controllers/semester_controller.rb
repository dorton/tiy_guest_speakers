class SemesterController < ApplicationController
  def index
    @talks = Talk.all

  end

  def show
    @semester = Semester.find(params[:id])
    @talks = @semester.talks.all
  end
end
