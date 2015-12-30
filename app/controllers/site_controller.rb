class SiteController < ApplicationController
  
  def index
  
   if params[:categoria] != "" 
        @st_empresas = StEmpresa.where(st_category_id: params[:categoria])
     else
 	    @st_empresas = StEmpresa.all
   end
  
  end

  def home
   
   @st_cidade = StCidade.find(977)
   render layout: "home"
  end
end
