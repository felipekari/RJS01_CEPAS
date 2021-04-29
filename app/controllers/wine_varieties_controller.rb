class WineVarietiesController < ApplicationController
  before_action :authenticate_user!
  before_action :authorize_admin!
  before_action :set_wine_variety, only: %i[ show edit update destroy ]

  # GET /wine_varieties or /wine_varieties.json
  def index
    @wine_varieties = WineVariety.all
  end

  # GET /wine_varieties/1 or /wine_varieties/1.json
  def show
  end

  # GET /wine_varieties/new
  def new
    @wine_variety = WineVariety.new
  end

  # GET /wine_varieties/1/edit
  def edit
  end

  # POST /wine_varieties or /wine_varieties.json
  def create
    @wine_variety = WineVariety.new(wine_variety_params)

    respond_to do |format|
      if @wine_variety.save
        format.html { redirect_to @wine_variety, notice: "Wine variety was successfully created." }
        format.json { render :show, status: :created, location: @wine_variety }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @wine_variety.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /wine_varieties/1 or /wine_varieties/1.json
  def update
    respond_to do |format|
      if @wine_variety.update(wine_variety_params)
        format.html { redirect_to @wine_variety, notice: "Wine variety was successfully updated." }
        format.json { render :show, status: :ok, location: @wine_variety }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @wine_variety.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /wine_varieties/1 or /wine_varieties/1.json
  def destroy
    @wine_variety.destroy
    respond_to do |format|
      format.html { redirect_to wine_varieties_url, notice: "Wine variety was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_wine_variety
      @wine_variety = WineVariety.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def wine_variety_params
      params.require(:wine_variety).permit(:wine_id, :variety_id, :percentage)
    end
end
