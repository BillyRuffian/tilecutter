class Admin::SchemeTilesController < ApplicationController

  before_action :load_scheme, only:[ :show, :edit, :update, :destroy ]

  def index
    @tiles = Tiles.all.order :name
  end

  def new
  end

  def create
  end

  def show
  end

  def edit
  end

  def update
  end

  def destory
  end

  private
  def load_scheme 
    @scheme = Scheme.find params[:id]
  end
end
