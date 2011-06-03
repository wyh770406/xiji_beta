class AdminController < ApplicationController
  before_filter :admin_required#,:jquery_noconflict
  layout "admin"
  def index
    
  end

end