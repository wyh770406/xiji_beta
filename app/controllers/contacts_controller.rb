class ContactsController < ApplicationController
  def index
    @contact = Contact.find(:first)
  end
end
