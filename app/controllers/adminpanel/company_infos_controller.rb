class Adminpanel::CompanyInfosController < ApplicationController
  before_filter :admin_required
  layout "admin"
  def index
    @company_info = CompanyInfo.find(:first)
  end

  def edit
    @company_info = CompanyInfo.find(:first)
  end

  def update
    @company_info = CompanyInfo.find(params[:id])
    if @company_info.update_attributes(params[:company_info])

      redirect_to :action => 'index'
    else
      render :action => 'edit'
    end
  end
end