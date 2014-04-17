class FixersController < ApplicationController
  before_action :authenticate_fixer!
  before_action :authenticate_superadmin!, :only => [:activate, :deactivate]
  
  def index
    @fixers = Fixer.all
  end
  
  def activate
    @fixer = Fixer.find params[:id]
    @fixer.active = true
    @fixer.save
    redirect_to :action => :index
  end
  
  def deactivate
    @fixer = Fixer.find params[:id]
    @fixer.active = false
    @fixer.save
    redirect_to :action => :index
  end
  
  def authenticate_superadmin!
    redirect_to(root_url) unless current_fixer.superadmin?
  end
end
