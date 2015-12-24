class StBairrosController < ApplicationController
  before_action :set_st_bairro, only: [:show, :edit, :update, :destroy]

  # GET /st_bairros
  # GET /st_bairros.json
  def index
    @st_bairros = StBairro.all
  end

  # GET /st_bairros/1
  # GET /st_bairros/1.json
  def show
  end

  # GET /st_bairros/new
  def new
    @st_bairro = StBairro.new
  end

  # GET /st_bairros/1/edit
  def edit
  end

  # POST /st_bairros
  # POST /st_bairros.json
  def create
    @st_bairro = StBairro.new(st_bairro_params)

    respond_to do |format|
      if @st_bairro.save
        format.html { redirect_to @st_bairro, notice: 'St bairro was successfully created.' }
        format.json { render :show, status: :created, location: @st_bairro }
      else
        format.html { render :new }
        format.json { render json: @st_bairro.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /st_bairros/1
  # PATCH/PUT /st_bairros/1.json
  def update
    respond_to do |format|
      if @st_bairro.update(st_bairro_params)
        format.html { redirect_to @st_bairro, notice: 'St bairro was successfully updated.' }
        format.json { render :show, status: :ok, location: @st_bairro }
      else
        format.html { render :edit }
        format.json { render json: @st_bairro.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /st_bairros/1
  # DELETE /st_bairros/1.json
  def destroy
    @st_bairro.destroy
    respond_to do |format|
      format.html { redirect_to st_bairros_url, notice: 'St bairro was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_st_bairro
      @st_bairro = StBairro.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def st_bairro_params
      params.require(:st_bairro).permit(:nome_bairro, :latitude, :longitude, :st_cidade_id)
    end
end
