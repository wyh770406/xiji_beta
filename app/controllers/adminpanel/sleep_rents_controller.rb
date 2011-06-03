class Adminpanel::SleepRentsController < ApplicationController
  before_filter :admin_required
  layout "admin"
  def index
    @sleep_rent = SleepRent.find(:first)
  end

  def edit
    @sleep_rent = SleepRent.find(:first)
  end

  def update
    @sleep_rent = SleepRent.find(params[:id])
    if @sleep_rent.update_attributes(params[:sleep_rent])

      redirect_to :action => 'index'
    else
      render :action => 'edit'
    end
  end
end