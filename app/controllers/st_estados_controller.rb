class StEstadosController < ApplicationController
  before_action :set_st_estado, only: [:show, :edit, :update, :destroy]

  # GET /st_estados
  # GET /st_estados.json
  def index
    @st_estados = StEstado.all
  end

  # GET /st_estados/1
  # GET /st_estados/1.json
  def show
  end

  # GET /st_estados/new
  def new
    @st_estado = StEstado.new
  end

  # GET /st_estados/1/edit
  def edit
  end

  # POST /st_estados
  # POST /st_estados.json
  def create
    @st_estado = StEstado.new(st_estado_params)

    respond_to do |format|
      if @st_estado.save
        format.html { redirect_to @st_estado, notice: 'St estado was successfully created.' }
        format.json { render :show, status: :created, location: @st_estado }
      else
        format.html { render :new }
        format.json { render json: @st_estado.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /st_estados/1
  # PATCH/PUT /st_estados/1.json
  def update
    respond_to do |format|
      if @st_estado.update(st_estado_params)
        format.html { redirect_to @st_estado, notice: 'St estado was successfully updated.' }
        format.json { render :show, status: :ok, location: @st_estado }
      else
        format.html { render :edit }
        format.json { render json: @st_estado.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /st_estados/1
  # DELETE /st_estados/1.json
  def destroy
    @st_estado.destroy
    respond_to do |format|
      format.html { redirect_to st_estados_url, notice: 'St estado was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_st_estado
      @st_estado = StEstado.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def st_estado_params
      params.require(:st_estado).permit(:nome_estado, :sigl_estado)
    end
end
