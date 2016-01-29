class StItemsController < ApplicationController
  before_action :set_st_item, only: [:show, :edit, :update, :destroy]

  # GET /st_items
  # GET /st_items.json
  def index
    @st_items = StItem.all
  end

  # GET /st_items/1
  # GET /st_items/1.json
  def show
  end

  # GET /st_items/new
  def new
    @st_item = StItem.new
  end

  # GET /st_items/1/edit
  def edit
  end

  # POST /st_items
  # POST /st_items.json
  def create
    @st_item = StItem.new(st_item_params)

    respond_to do |format|
      if @st_item.save
        format.html { redirect_to @st_item, notice: 'St item was successfully created.' }
        format.json { render :show, status: :created, location: @st_item }
      else
        format.html { render :new }
        format.json { render json: @st_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /st_items/1
  # PATCH/PUT /st_items/1.json
  def update
    respond_to do |format|
      if @st_item.update(st_item_params)
        format.html { redirect_to @st_item, notice: 'St item was successfully updated.' }
        format.json { render :show, status: :ok, location: @st_item }
      else
        format.html { render :edit }
        format.json { render json: @st_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /st_items/1
  # DELETE /st_items/1.json
  def destroy
    @st_item.destroy
    respond_to do |format|
      format.html { redirect_to st_items_url, notice: 'St item was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_st_item
      @st_item = StItem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def st_item_params
      params.require(:st_item).permit(:nome_produto, :st_categoriaproduto_id)
    end
end
