class DifferentsController < ApplicationController
  before_action :set_different, only: [:show, :edit, :update, :destroy]

  # GET /differents
  # GET /differents.json
  def index
    @differents = Different.all
  end

  # GET /differents/1
  # GET /differents/1.json
  def show
  end

  # GET /differents/new
  def new
    @different = Different.new
  end

  # GET /differents/1/edit
  def edit
  end

  # POST /differents
  # POST /differents.json
  def create
    @different = Different.new(different_params)

    respond_to do |format|
      if @different.save
        format.html { redirect_to @different, notice: 'Different was successfully created.' }
        format.json { render :show, status: :created, location: @different }
      else
        format.html { render :new }
        format.json { render json: @different.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /differents/1
  # PATCH/PUT /differents/1.json
  def update
    respond_to do |format|
      if @different.update(different_params)
        format.html { redirect_to @different, notice: 'Different was successfully updated.' }
        format.json { render :show, status: :ok, location: @different }
      else
        format.html { render :edit }
        format.json { render json: @different.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /differents/1
  # DELETE /differents/1.json
  def destroy
    @different.destroy
    respond_to do |format|
      format.html { redirect_to differents_url, notice: 'Different was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_different
      @different = Different.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def different_params
      params.require(:different).permit(:photo, :room_name, :description, :picture, :room_type, :guests, :bedroom, :bed, :price, :houserules, :availability, :wifi)
    end
end
