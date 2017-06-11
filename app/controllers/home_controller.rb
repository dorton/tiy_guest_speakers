class HomeController < ApplicationController
  def index
    @semester = Semester.last
    @talks = @semester.talks.all
  end
end
