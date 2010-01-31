class ContactsController < ApplicationController
  before_filter :find_contact, :except => [:new, :create, :index]
  respond_to :html, :xml, :json

  def index
    @contacts = Contact.all
  end

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.create(params[:contact])
    respond_with(@contact, :location => contacts_path)
  end
  
  def show
  end

  def edit
  end

  def update
    @contact.update_attributes(params[:contact])
    respond_with(@contact, :location => contacts_path)
  end
  
private
  def find_contact
    @contact = Contact.find(params[:id])
  end
end
