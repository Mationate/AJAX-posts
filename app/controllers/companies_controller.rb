class CompaniesController < ApplicationController
  def index
    @companies = Company.all
    @company = Company.new
  end

  def create
    @company = Company.new(company_params)
    if @company.save
      respond_to :js
    else
      redirect_to root_path, alert:"Error al crear una empresa, intente nuevamente"
      
    end
  end

  private

  def company_params
    params.require(:company).permit(:name)
  end
  
end
