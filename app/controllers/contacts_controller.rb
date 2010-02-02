class ContactsController < ApplicationController
  before_filter :find_company
  respond_to :html, :xml, :json

  def index
    redirect_to company_path(@company)
  end

  def new
    @contact = @company.contacts.build
    respond_with(@contact)
  end

  def create
    @contact = Contact.new(params[:contact])
    @company.contacts << @contact
    @company.save
    if @company.id == "none"
      respond_with(@contact, :location => companies_path)
    else
      respond_with(@contact, :location => company_path(@company))
    end  
  end
  
  def show
    @contact = @company.contacts.criteria.id(params[:id]).collect[0]
    respond_with(@contact)
  end

  def edit
    @contact = @company.contacts.criteria.id(params[:id]).collect[0]
    respond_with(@contact)
  end

  def update
    @contact = @company.contacts.criteria.id(params[:id]).collect.first
    @contact.update_attributes(params[:contact])
    respond_with(@contact, :location => company_path(@company))
  end
  
private
  def find_company
    @company = Company.find(params[:company_id] || 'none')
  end
end
