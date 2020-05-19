# require 'will_paginate/array'

class GalleriesController < ApplicationController
  before_action :set_gallery, only: [:show, :edit, :update, :destroy]
  before_action :admin_user, only: [:new,  :create, :edit, :update, :destroy]

  


  # GET /galleries
  # GET /galleries.json
  def index
    
    if !params[:tag].blank?
      tag = Tag.find_by(name: params[:tag].to_s).id
      @galleries = Gallery.where(tag_id: tag)
    else
      @galleries = Gallery.all
      # @galleries = Gallery.page(params[:page]).order('created_at DESC')
    end

    # @galleries.page(2).order('created_at DESC')
    @gallery_top = Gallery.where(usage: "Gallery Page Top").all

    # @myphotos = Gallery.get_photos(@galleries)
    #.paginate(:per_page => 1)

    # @myphotos = []
    # Gallery.get_photos(@galleries).each do |g|
    #   @myphotos << g
    # end

  end

  def front
    @main_images = Gallery.front

    if @main_images.present?
      @parallax1 = @main_images[0].photos[0] || @main_images[1].photos[0]
    else
      @parallax1 = ""
    end

    if @main_images[1].present?
      @parallax2 = @main_images[1].photos[0]
    else
      @parallax2 = ""
    end

    @photography = Service.where(service_type: 'Photography')
    @design = Service.where(service_type: 'Design')
  end

  # GET /galleries/1
  # GET /galleries/1.json
  def show
  end

  # GET /galleries/new
  def new
    @gallery = Gallery.new
  end

  # GET /galleries/1/edit
  def edit
  end

  # POST /galleries
  # POST /galleries.json
  def create
    @gallery = Gallery.new(gallery_params)

    respond_to do |format|
      if @gallery.save
        format.html { redirect_to galleries_url, notice: 'Gallery was successfully created.' }
        format.json { render :show, status: :created, location: galleries_url }
      else
        format.html { render :new }
        format.json { render json: @gallery.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /galleries/1
  # PATCH/PUT /galleries/1.json
  def update
    respond_to do |format|
      if @gallery.update(gallery_params)

        if params[:photos] != nil
          @gallery.photos.attach(params[:photos])
        end
        format.html { redirect_to galleries_url, notice: 'Gallery was successfully updated.' }
        format.json { render :show, status: :ok, location: galleries_url }
      else
        format.html { render :edit }
        format.json { render json: @gallery.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /galleries/1
  # DELETE /galleries/1.json
  def destroy
    
    @gallery.destroy
    @gallery.photos.purge
    respond_to do |format|
      format.html { redirect_to galleries_url, notice: 'Gallery was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def delete_one_image
    
    @photo = ActiveStorage::Attachment.find(params[:id])
    
    @photo.purge
    respond_to do |format|
      format.html { redirect_to galleries_url, notice: 'Gallery was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gallery
      @gallery = Gallery.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def gallery_params
      params.require(:gallery).permit(:name, :image_type, :tag_id, :usage, :caption, :sub_caption, photos:[])
    end

    # def admin_user
    #   redirect_to root_path if !current_admin_user.present?
    # end
end
