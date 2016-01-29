class StProdutosController < ApplicationController
  before_action :set_st_produto, only: [:show, :edit, :update, :destroy]

  # GET /st_produtos
  # GET /st_produtos.json

   layout "admin"
   
  def index
    @st_produtos = StProduto.all
  end

  # GET /st_produtos/1
  # GET /st_produtos/1.json
  def show
  end

  # GET /st_produtos/new
  def new
    @st_produto = StProduto.new
  end

  # GET /st_produtos/1/edit
  def edit
  end

  # POST /st_produtos
  # POST /st_produtos.json
  def create
    @st_produto = StProduto.new(st_produto_params)

    respond_to do |format|
      if @st_produto.save
        format.html { redirect_to @st_produto, notice: 'St produto was successfully created.' }
        format.json { render :show, status: :created, location: @st_produto }
      else
        format.html { render :new }
        format.json { render json: @st_produto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /st_produtos/1
  # PATCH/PUT /st_produtos/1.json
  def update
    respond_to do |format|
      if @st_produto.update(st_produto_params)
        format.html { redirect_to @st_produto, notice: 'St produto was successfully updated.' }
        format.json { render :show, status: :ok, location: @st_produto }
      else
        format.html { render :edit }
        format.json { render json: @st_produto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /st_produtos/1
  # DELETE /st_produtos/1.json
  def destroy
    @st_produto.destroy
    respond_to do |format|
      format.html { redirect_to st_produtos_url, notice: 'St produto was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_st_produto
      @st_produto = StProduto.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def st_produto_params
      params.require(:st_produto).permit(:nome_produto, :valr_produto, :st_categoriaproduto_id, :st_empresa_id)
    end
end
