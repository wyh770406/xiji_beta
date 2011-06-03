class Adminpanel::BusinessCooperatesController < ApplicationController
  before_filter :admin_required
  layout "admin"
  def index
    @business_cooperate = BusinessCooperate.find(:first)
  end

  def edit
    @business_cooperate = BusinessCooperate.find(:first)
  end

  def update
    @business_cooperate = BusinessCooperate.find(params[:id])
    if @business_cooperate.update_attributes(params[:business_cooperate])

      redirect_to :action => 'index'
    else
      render :action => 'edit'
    end
  end
end