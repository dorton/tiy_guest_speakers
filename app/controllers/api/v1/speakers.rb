module API
  module V1
    class Speakers < Grape::API
      include API::V1::Defaults

      resource :speakers do
        desc "Return all speakers"
              params do
                optional :start_date, type: Date, desc: "Start Date of Semester"
              end

              get "", root: :speakers do

                query = Speaker.all

                if permitted_params[:start_date].present?
                query = query.joins(:semester => :speaker).where("semester.start_date" => params[:start_date])
                # query = query.where(start_date: permitted_params[:start_date]) if permitted_params[:start_date].present?
                end

                query
              end

        desc "Return a speaker"
        params do
          requires :id, type: String, desc: "ID of the speaker"
        end
        get ":id", root: "speaker" do
          Speaker.where(id: permitted_params[:id]).first!
        end
      end
    end
  end
end
