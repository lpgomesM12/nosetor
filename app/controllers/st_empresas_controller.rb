class StEmpresasController < ApplicationController
  before_action :set_st_empresa, only: [:show, :edit, :update, :destroy]

  # GET /st_empresas
  # GET /st_empresas.json

  layout "admin"
  
  def index
    @st_empresas = StEmpresa.all
  end

  # GET /st_empresas/1
  # GET /st_empresas/1.json
  def show
  end

  # GET /st_empresas/new
  def new
    @st_empresa = StEmpresa.new
    @st_empresa.build_st_endereco
  end

  # GET /st_empresas/1/edit
  def edit
  end

  # POST /st_empresas
  # POST /st_empresas.json
  def create
    @st_empresa = StEmpresa.new(st_empresa_params)

    respond_to do |format|
      if @st_empresa.save
        format.html { redirect_to @st_empresa, notice: 'St empresa was successfully created.' }
        format.json { render :show, status: :created, location: @st_empresa }
      else
        format.html { render :new }
        format.json { render json: @st_empresa.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /st_empresas/1
  # PATCH/PUT /st_empresas/1.json
  def update
    respond_to do |format|
      if @st_empresa.update(st_empresa_params)
        format.html { redirect_to @st_empresa, notice: 'St empresa was successfully updated.' }
        format.json { render :show, status: :ok, location: @st_empresa }
      else
        format.html { render :edit }
        format.json { render json: @st_empresa.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /st_empresas/1
  # DELETE /st_empresas/1.json
  def destroy
    @st_empresa.destroy
    respond_to do |format|
      format.html { redirect_to st_empresas_url, notice: 'St empresa was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_st_empresa
      @st_empresa = StEmpresa.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def st_empresa_params
      params.require(:st_empresa).permit(:nome_empresa, :desc_anuncioempresa, :tele_telefone1, :tele_telefone2, :desc_palavrachave, :desc_cnpj, :st_endereco_id, :st_category_id, :logo, :page_name, st_endereco_attributes: [ :id, :nome_rua, :desc_quadra, :desc_lote, :desc_numero, :desc_complemento, :desc_cep, :latitude, :longitude, :st_bairro_id, :st_cidade_id])
    end
end
