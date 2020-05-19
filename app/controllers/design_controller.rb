class DesignController < ApplicationController
  before_action :admin_user, only: [:new,  :create, :edit, :update, :destroy]
  def index
    @designs = Gallery.where(image_type: "Design").all
    # @designs = Gallery.all
    @services = Service.where(service_type: 'Design')

    # Retrieve photos from gallery with "Design page top" tag
    @design_top = Gallery.where(usage: "Design Page Top").all
  end
end
