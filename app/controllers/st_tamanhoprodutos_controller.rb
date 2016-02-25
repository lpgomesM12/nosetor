class StTamanhoprodutosController < ApplicationController
  before_action :set_st_tamanhoproduto, only: [:show, :edit, :update, :destroy]

  # GET /st_tamanhoprodutos
  # GET /st_tamanhoprodutos.json

  include ActionView::Helpers::NumberHelper

  def carrega_tamanho
     tamanhoproduto = StTamanhoproduto.where(st_produto_id: params[:st_produto_id])
     json_tamanhoproduto = tamanhoproduto.map { |item| {:id => item.id,
                                                       :desc_tamanho => item.desc_tamanho,
                                                       :valr_produto => number_to_currency( item.valr_produto, unit: "R$", separator: ",", delimiter: ".")}}

     render :json => json_tamanhoproduto
  end 

  def exclui_tamanho

     @st_tamanhoproduto = StTamanhoproduto.find(params[:id])
     @st_tamanhoproduto.destroy
     render :json => true
  
  end 


  def salva_tamanho

    params[:valr_produto] = params[:valr_produto].gsub('R$', '')
    params[:valr_produto] = params[:valr_produto].gsub('.', '')
    params[:valr_produto] = params[:valr_produto].gsub(',', '.').to_f

   @st_tamanhoproduto = StTamanhoproduto.new
   @st_tamanhoproduto.desc_tamanho = params[:desc_tamanho]
   @st_tamanhoproduto.st_produto_id = params[:st_produto_id]
   @st_tamanhoproduto.valr_produto = params[:valr_produto]

   @st_tamanhoproduto.save

   render :json => true    

  end

  def index
    @st_tamanhoprodutos = StTamanhoproduto.all
  end

  # GET /st_tamanhoprodutos/1
  # GET /st_tamanhoprodutos/1.json
  def show
  end

  # GET /st_tamanhoprodutos/new
  def new
    @st_tamanhoproduto = StTamanhoproduto.new
  end

  # GET /st_tamanhoprodutos/1/edit
  def edit
  end

  # POST /st_tamanhoprodutos
  # POST /st_tamanhoprodutos.json
  def create
    @st_tamanhoproduto = StTamanhoproduto.new(st_tamanhoproduto_params)

    respond_to do |format|
      if @st_tamanhoproduto.save
        format.html { redirect_to @st_tamanhoproduto, notice: 'St tamanhoproduto was successfully created.' }
        format.json { render :show, status: :created, location: @st_tamanhoproduto }
      else
        format.html { render :new }
        format.json { render json: @st_tamanhoproduto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /st_tamanhoprodutos/1
  # PATCH/PUT /st_tamanhoprodutos/1.json
  def update
    respond_to do |format|
      if @st_tamanhoproduto.update(st_tamanhoproduto_params)
        format.html { redirect_to @st_tamanhoproduto, notice: 'St tamanhoproduto was successfully updated.' }
        format.json { render :show, status: :ok, location: @st_tamanhoproduto }
      else
        format.html { render :edit }
        format.json { render json: @st_tamanhoproduto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /st_tamanhoprodutos/1
  # DELETE /st_tamanhoprodutos/1.json
  def destroy
    @st_tamanhoproduto.destroy
    respond_to do |format|
      format.html { redirect_to st_tamanhoprodutos_url, notice: 'St tamanhoproduto was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_st_tamanhoproduto
      @st_tamanhoproduto = StTamanhoproduto.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def st_tamanhoproduto_params
      params.require(:st_tamanhoproduto).permit(:desc_tamanho, :valr_produto, :st_produtos_id)
    end
end
