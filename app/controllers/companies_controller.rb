class CompaniesController < ApplicationController
  before_action :set_company, only: %i[destroy edit update show]
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

  def show
    respond_to :js
  end
  

  def edit
    respond_to :js
  end

  def update
    if @company.update(company_params)
      respond_to :js
    else
      redirect_to root_path, alert: 'Error al actualizar la empresa, intente nuevamente'
    end
  end

  def destroy
    @company.destroy
    respond_to :js
  end

  private

  def company_params
    params.require(:company).permit(:name)
  end

  def set_company
    @company = Company.find(params[:id])
  end


end
