class CompaniesController < ApplicationController
  respond_to :html, :xml, :json
  
  before_filter :find_company, :except => [:new, :create, :index]
  
  def index
    @companies = Company.criteria.excludes(:name => "none")
    @no_company = Company.find('none')
    respond_with(@companies)
  end
  
  def new
    @company = Company.new
    respond_with(@company)
  end
  
  def create
    @company = Company.new(params[:company])
    if @company.save
      flash[:notice] = "Company Created"
    end
    respond_with(@company)
  end
  
  def show
    respond_with(@company)
  end
  
  def edit
    respond_with(@company)
  end
  
  def update
    if @company.update_attributes(params[:company])
      flash[:notice] = "Company Updated"
    end
    respond_with(@company)
  end
  
  def destroy
    @company.destroy
    redirect_to companies_path
  end
  
  private
    def find_company
      @company = Company.find(params[:id])
    end
end
