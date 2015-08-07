module API
  module V1
    class Speakers < Grape::API
      include API::V1::Defaults

      resource :speakers do
        desc "Return all speakers"
        get "", root: :speakers do
          Speaker.all
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
