module API
  module V1
    class Announcements < Grape::API
      include API::V1::Defaults

      resource :announcements do
        desc "Return all announcements"

              get "", root: :announcements do

                query = Announcement.all.order( 'date ASC' )
                query
              end

        desc "Return an announcement"
        params do
          requires :id, type: String, desc: "ID of the announcement"
        end
        get ":id", root: "announcement" do
          Announcement.where(id: permitted_params[:id]).first!
        end
      end
    end
  end
end
