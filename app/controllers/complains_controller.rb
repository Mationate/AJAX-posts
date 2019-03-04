class ComplainsController < ApplicationController
  def create
    @complain = Complain.new(
      content: params[:complain][:content],
      company_id: params[:company_id]
    )
    @complain.user = current_user
    if @complain.save
      respond_to :js
    else
      redirect_to root_path, alert: 'Error al crear el reclamo'
    end
  end


  
  
end
