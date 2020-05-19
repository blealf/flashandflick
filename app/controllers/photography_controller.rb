class PhotographyController < ApplicationController
  before_action :admin_user, only: [:new,  :create, :edit, :update, :destroy]
  
  def index
    # @photographs = Gallery.where(image_type: "Photography").all
    @photographs = if !params[:tag].blank?
      @tag = Tag.find_by(name: params[:tag].to_s).id
      @photographs = Gallery.where(image_type: "Photography", tag_id: @tag).all
    else
      @photographs = Gallery.where(image_type: "Photography").all
    end

    @photograph_top = Gallery.where(usage: "Photography Page Top").all
    @services = Service.where(service_type: 'Photography')
  end
end
