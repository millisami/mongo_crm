class ContactsController < ApplicationController
  def index
    @contacts = Contact.all
  end
  def new
    @contact = Contact.new
  end
  def create
    @contact = Contact.new(params[:contact])
    if @contact.save
      render :new
    else
      redirect_to :index
    end
  end
  def edit
    @contact = Contact.criteria.id(params[:id])
  end
  def show
    @contact = Contact.criteria.id(params[:id])    
  end
  def update
    @contact = Contact.criteria.id(params[:id])
    @contact.update_attributes(params[:contact])
  end
end
