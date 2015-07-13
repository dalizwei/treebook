class PhotosController < ApplicationController
  #before_action :set_status, only: [:show, :edit, :update, :destroy]
  #before_action :authenticate_user! #, only: [:new, :create, :edit, :update, :destroy]

  # GET /photos
  # GET /photos.json
  def index
    @photos = Photo.all
  end

  # GET /photos/1
  # GET /photos/1.json
  def show

  end

  # GET /photos/new
  def new
    @photo = Photo.new
  end

  def edit

  end

  def update

  end

  def destroy

  end
end
