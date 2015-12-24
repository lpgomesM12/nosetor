class StEnderecosController < ApplicationController
  before_action :set_st_endereco, only: [:show, :edit, :update, :destroy]

  # GET /st_enderecos
  # GET /st_enderecos.json
  def index
    @st_enderecos = StEndereco.all
  end

  # GET /st_enderecos/1
  # GET /st_enderecos/1.json
  def show
  end

  # GET /st_enderecos/new
  def new
    @st_endereco = StEndereco.new
  end

  # GET /st_enderecos/1/edit
  def edit
  end

  # POST /st_enderecos
  # POST /st_enderecos.json
  def create
    @st_endereco = StEndereco.new(st_endereco_params)

    respond_to do |format|
      if @st_endereco.save
        format.html { redirect_to @st_endereco, notice: 'St endereco was successfully created.' }
        format.json { render :show, status: :created, location: @st_endereco }
      else
        format.html { render :new }
        format.json { render json: @st_endereco.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /st_enderecos/1
  # PATCH/PUT /st_enderecos/1.json
  def update
    respond_to do |format|
      if @st_endereco.update(st_endereco_params)
        format.html { redirect_to @st_endereco, notice: 'St endereco was successfully updated.' }
        format.json { render :show, status: :ok, location: @st_endereco }
      else
        format.html { render :edit }
        format.json { render json: @st_endereco.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /st_enderecos/1
  # DELETE /st_enderecos/1.json
  def destroy
    @st_endereco.destroy
    respond_to do |format|
      format.html { redirect_to st_enderecos_url, notice: 'St endereco was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_st_endereco
      @st_endereco = StEndereco.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def st_endereco_params
      params.require(:st_endereco).permit(:nome_rua, :desc_quadra, :desc_lote, :desc_numero, :desc_complemento, :desc_cep, :latitude, :longitude, :st_bairro_id, :st_cidade_id)
    end
end
