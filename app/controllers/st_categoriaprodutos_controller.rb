class StCategoriaprodutosController < ApplicationController
  before_action :set_st_categoriaproduto, only: [:show, :edit, :update, :destroy]

  # GET /st_categoriaprodutos
  # GET /st_categoriaprodutos.json
  def index
    @st_categoriaprodutos = StCategoriaproduto.all
  end

  # GET /st_categoriaprodutos/1
  # GET /st_categoriaprodutos/1.json
  def show
  end

  # GET /st_categoriaprodutos/new
  def new
    @st_categoriaproduto = StCategoriaproduto.new
  end

  # GET /st_categoriaprodutos/1/edit
  def edit
  end

  # POST /st_categoriaprodutos
  # POST /st_categoriaprodutos.json
  def create
    @st_categoriaproduto = StCategoriaproduto.new(st_categoriaproduto_params)

    respond_to do |format|
      if @st_categoriaproduto.save
        format.html { redirect_to @st_categoriaproduto, notice: 'St categoriaproduto was successfully created.' }
        format.json { render :show, status: :created, location: @st_categoriaproduto }
      else
        format.html { render :new }
        format.json { render json: @st_categoriaproduto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /st_categoriaprodutos/1
  # PATCH/PUT /st_categoriaprodutos/1.json
  def update
    respond_to do |format|
      if @st_categoriaproduto.update(st_categoriaproduto_params)
        format.html { redirect_to @st_categoriaproduto, notice: 'St categoriaproduto was successfully updated.' }
        format.json { render :show, status: :ok, location: @st_categoriaproduto }
      else
        format.html { render :edit }
        format.json { render json: @st_categoriaproduto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /st_categoriaprodutos/1
  # DELETE /st_categoriaprodutos/1.json
  def destroy
    @st_categoriaproduto.destroy
    respond_to do |format|
      format.html { redirect_to st_categoriaprodutos_url, notice: 'St categoriaproduto was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_st_categoriaproduto
      @st_categoriaproduto = StCategoriaproduto.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def st_categoriaproduto_params
      params.require(:st_categoriaproduto).permit(:nome_categoria)
    end
end
