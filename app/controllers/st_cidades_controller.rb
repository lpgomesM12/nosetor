class StCidadesController < ApplicationController
  before_action :set_st_cidade, only: [:show, :edit, :update, :destroy]

  # GET /st_cidades
  # GET /st_cidades.json
  def index
    @st_cidades = StCidade.all
  end

  # GET /st_cidades/1
  # GET /st_cidades/1.json
  def show
  end

  # GET /st_cidades/new
  def new
    @st_cidade = StCidade.new
  end

  # GET /st_cidades/1/edit
  def edit
  end

  
  def get_cities
    #st_cidades = StCidade.find :all, :conditions => {:st_estado_id => params[:id]}, :order => "nome_cidade ASC"
    
    st_cidades = StCidade.where(st_estado_id: params[:id]).order('nome_cidade ASC')

    st_cidades_json = st_cidades.map {|item| {:id => item.id, :name => item.nome_cidade}}

    render :json => st_cidades_json
  end 

  # POST /st_cidades
  # POST /st_cidades.json
  def create
    @st_cidade = StCidade.new(st_cidade_params)

    respond_to do |format|
      if @st_cidade.save
        format.html { redirect_to @st_cidade, notice: 'St cidade was successfully created.' }
        format.json { render :show, status: :created, location: @st_cidade }
      else
        format.html { render :new }
        format.json { render json: @st_cidade.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /st_cidades/1
  # PATCH/PUT /st_cidades/1.json
  def update
    respond_to do |format|
      if @st_cidade.update(st_cidade_params)
        format.html { redirect_to @st_cidade, notice: 'St cidade was successfully updated.' }
        format.json { render :show, status: :ok, location: @st_cidade }
      else
        format.html { render :edit }
        format.json { render json: @st_cidade.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /st_cidades/1
  # DELETE /st_cidades/1.json
  def destroy
    @st_cidade.destroy
    respond_to do |format|
      format.html { redirect_to st_cidades_url, notice: 'St cidade was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_st_cidade
      @st_cidade = StCidade.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def st_cidade_params
      params.require(:st_cidade).permit(:nome_cidade, :st_estado_id)
    end
end
