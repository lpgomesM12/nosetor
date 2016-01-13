class SiteController < ApplicationController
  
  def index
    if params[:categoria] && params[:categoria] != "" 
        @st_empresas = StEmpresa.where(st_category_id: params[:categoria])
  elsif params[:q] && params[:q] != "" 
      @st_empresas = StEmpresa.search(params[:q])
      @q = params[:q]
  elsif params[:qq] && params[:qq] != "" 
      @st_empresas = StEmpresa.search(params[:qq])
      @q = params[:qq]
  elsif params[:bairro]
     @st_empresas  = StEmpresa.joins(:st_endereco).where(st_enderecos: {st_bairro_id: params[:bairro]})
     @bairro = params[:bairro]
    else
 	    @st_empresas = StEmpresa.all
    end  
  end

  def home  
   @st_cidade = StCidade.find(977)
    render layout: "index"
  end

  def contact  
  end
  def generic  
  end
end
