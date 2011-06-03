class Adminpanel::ContactsController < ApplicationController
  before_filter :admin_required
  layout "admin"
  def index
    @contact = Contact.find(:first)
  end

  def edit
    @contact = Contact.find(:first)
  end

  def update
    @contact = Contact.find(params[:id])
    if @contact.update_attributes(params[:contact])

      redirect_to :action => 'index'
    else
      render :action => 'edit'
    end
  end
end
