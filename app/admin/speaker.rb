ActiveAdmin.register Speaker do
  permit_params :name, :date, :pic, :company, :email, :title, :semester

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if resource.something?
#   permitted
# end

index do

  column :name
  column :date
  # column "semesters" do |speaker| speaker.semester.start_date end
  column :company
  column :email
  column :title
  column "pic"  do |speaker|  image_tag speaker.pic, class: "img-thumbnail" end
  actions

end


end
