class Adminpanel::TalentsController < ApplicationController
  before_filter :admin_required
  layout "admin"
  def index
    @talent = Talent.find(:first)
  end

  def edit
    @talent = Talent.find(:first)
  end

  def update
    @talent = Talent.find(params[:id])
    if @talent.update_attributes(params[:talent])

      redirect_to :action => 'index'
    else
      render :action => 'edit'
    end
  end
end
