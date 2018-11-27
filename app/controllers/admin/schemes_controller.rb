class Admin::SchemesController < ApplicationController

  before_action :load_scheme, only:[ :show, :edit, :update, :destroy ]

  def index
    @schemes = Scheme.all.order :name
  end

  def new
    @scheme = Scheme.new
  end

  def create
    @scheme = Scheme.new( scheme_params )
    @scheme.save
  end

  def update
    @scheme.update scheme_params
    render :show
  end

  def destroy
    @scheme.destroy
    redirect_to :index
  end

  private
  def scheme_params
    params.require( :scheme ).permit( :name )
  end

  def load_scheme 
    @scheme = Scheme.find params[:id]
  end
end
