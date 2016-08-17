class CaterogriesController < ApplicationController
  before_action :set_caterogry, only: [:show, :edit, :update, :destroy]
  load_and_authorize_resource

  # GET /caterogries
  # GET /caterogries.json
  def index
    @caterogries = Caterogry.all
  end

  # GET /caterogries/1
  # GET /caterogries/1.json
  def show
  end

  # GET /caterogries/new
  def new
    @caterogry = Caterogry.new
  end

  # GET /caterogries/1/edit
  def edit
  end

  # POST /caterogries
  # POST /caterogries.json
  def create
    @caterogry = Caterogry.new(caterogry_params)

    respond_to do |format|
      if @caterogry.save
        format.html { redirect_to @caterogry, notice: 'Caterogry was successfully created.' }
        format.json { render :show, status: :created, location: @caterogry }
      else
        format.html { render :new }
        format.json { render json: @caterogry.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /caterogries/1
  # PATCH/PUT /caterogries/1.json
  def update
    respond_to do |format|
      if @caterogry.update(caterogry_params)
        format.html { redirect_to @caterogry, notice: 'Caterogry was successfully updated.' }
        format.json { render :show, status: :ok, location: @caterogry }
      else
        format.html { render :edit }
        format.json { render json: @caterogry.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /caterogries/1
  # DELETE /caterogries/1.json
  def destroy
    @caterogry.destroy
    respond_to do |format|
      format.html { redirect_to caterogries_url, notice: 'Caterogry was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_caterogry
      @caterogry = Caterogry.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def caterogry_params
      params.require(:caterogry).permit(:name, :user_id)
    end
end
