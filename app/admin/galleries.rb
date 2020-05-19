ActiveAdmin.register Gallery do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
    menu label: "Gallery Images"

    permit_params :name, :image_type, :tag_id, :usage, :caption, :sub_caption, photos:[]
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

    form partial: 'galleries/admin_form'


end
