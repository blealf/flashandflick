ActiveAdmin.register Contact do
    # See permitted parameters documentation:
    # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
    #
        permit_params :first_name, :last_name, :email, :phone, :message
    #
    # or
    #
    # permit_params do
    #   permitted = [:permitted, :attributes]
    #   permitted << :other if params[:action] == 'create' && current_user.admin?
    #   permitted
    # end
    
        # form partial: 'galleries/admin_form'
    
    
    end
    