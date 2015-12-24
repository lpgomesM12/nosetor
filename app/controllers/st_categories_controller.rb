class StCategoriesController < ApplicationController
  before_action :set_st_category, only: [:show, :edit, :update, :destroy]

  # GET /st_categories
  # GET /st_categories.json
  def index
    @st_categories = StCategory.all
  end

  # GET /st_categories/1
  # GET /st_categories/1.json
  def show
  end

  # GET /st_categories/new
  def new
    @st_category = StCategory.new
  end

  # GET /st_categories/1/edit
  def edit
  end

  # POST /st_categories
  # POST /st_categories.json
  def create
    @st_category = StCategory.new(st_category_params)

    respond_to do |format|
      if @st_category.save
        format.html { redirect_to @st_category, notice: 'St category was successfully created.' }
        format.json { render :show, status: :created, location: @st_category }
      else
        format.html { render :new }
        format.json { render json: @st_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /st_categories/1
  # PATCH/PUT /st_categories/1.json
  def update
    respond_to do |format|
      if @st_category.update(st_category_params)
        format.html { redirect_to @st_category, notice: 'St category was successfully updated.' }
        format.json { render :show, status: :ok, location: @st_category }
      else
        format.html { render :edit }
        format.json { render json: @st_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /st_categories/1
  # DELETE /st_categories/1.json
  def destroy
    @st_category.destroy
    respond_to do |format|
      format.html { redirect_to st_categories_url, notice: 'St category was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_st_category
      @st_category = StCategory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def st_category_params
      params.require(:st_category).permit(:nome_categoria)
    end
end
