class StItemprodutosController < ApplicationController
  before_action :set_st_itemproduto, only: [:show, :edit, :update, :destroy]

  
  def carrega_item_produto
     itemprodutos = StItemproduto.where(st_produto_id: params[:st_produto_id])
     json_itemprodutos = itemprodutos.map { |item| {:id => item.id,
                                                       :nome_item => item.st_item.nome_item,
                                                       :numr_quatidade => item.numr_quatidade}}
     render :json => json_itemprodutos
  end 
  
  def salva_item_produto
     @st_itemproduto = StItemproduto.new
     @st_itemproduto.st_item_id = params[:id] 
     @st_itemproduto.st_produto_id = params[:st_produto_id]
     @st_itemproduto.numr_quatidade = params[:numr_quatidade]
     @st_itemproduto.save

     render :json => true    
  end


  # GET /st_itemprodutos
  # GET /st_itemprodutos.json
  def index
    @st_itemprodutos = StItemproduto.all
  end

  # GET /st_itemprodutos/1
  # GET /st_itemprodutos/1.json
  def show
  end

  # GET /st_itemprodutos/new
  def new
    @st_itemproduto = StItemproduto.new
  end

  # GET /st_itemprodutos/1/edit
  def edit
  end

  # POST /st_itemprodutos
  # POST /st_itemprodutos.json
  def create
    @st_itemproduto = StItemproduto.new(st_itemproduto_params)

    respond_to do |format|
      if @st_itemproduto.save
        format.html { redirect_to @st_itemproduto, notice: 'St itemproduto was successfully created.' }
        format.json { render :show, status: :created, location: @st_itemproduto }
      else
        format.html { render :new }
        format.json { render json: @st_itemproduto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /st_itemprodutos/1
  # PATCH/PUT /st_itemprodutos/1.json
  def update
    respond_to do |format|
      if @st_itemproduto.update(st_itemproduto_params)
        format.html { redirect_to @st_itemproduto, notice: 'St itemproduto was successfully updated.' }
        format.json { render :show, status: :ok, location: @st_itemproduto }
      else
        format.html { render :edit }
        format.json { render json: @st_itemproduto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /st_itemprodutos/1
  # DELETE /st_itemprodutos/1.json
  def destroy
    @st_itemproduto.destroy
    respond_to do |format|
      format.html { redirect_to st_itemprodutos_url, notice: 'St itemproduto was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_st_itemproduto
      @st_itemproduto = StItemproduto.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def st_itemproduto_params
      params.require(:st_itemproduto).permit(:st_item_id, :st_produto_id)
    end
end
