class CrimsController < ApplicationController
  before_action :set_crim, only: [:show, :edit, :update, :destroy]

  # GET /crims
  # GET /crims.json
  def index
    @crims = Crim.all
  end

  # GET /crims/1
  # GET /crims/1.json
  def show
  end

  # GET /crims/new
  def new
    @crim = Crim.new
  end

  # GET /crims/1/edit
  def edit
  end

  # POST /crims
  # POST /crims.json
  def create
    @crim = Crim.new(crim_params)

    respond_to do |format|
      if @crim.save
        format.html { redirect_to @crim, notice: 'Crim was successfully created.' }
        format.json { render :show, status: :created, location: @crim }
      else
        format.html { render :new }
        format.json { render json: @crim.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /crims/1
  # PATCH/PUT /crims/1.json
  def update
    respond_to do |format|
      if @crim.update(crim_params)
        format.html { redirect_to @crim, notice: 'Crim was successfully updated.' }
        format.json { render :show, status: :ok, location: @crim }
      else
        format.html { render :edit }
        format.json { render json: @crim.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /crims/1
  # DELETE /crims/1.json
  def destroy
    @crim.destroy
    respond_to do |format|
      format.html { redirect_to crims_url, notice: 'Crim was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_crim
      @crim = Crim.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def crim_params
      params.require(:crim).permit(:name, :zip, :date, :plate)
    end
end
