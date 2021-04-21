class InspeccionsController < ApplicationController
  before_action :set_inspeccion, only: %i[ show edit update destroy ]

  # GET /inspeccions or /inspeccions.json
  def index
    @inspeccions = Inspeccion.all
  end

  # GET /inspeccions/1 or /inspeccions/1.json
  def show
  end

  # GET /inspeccions/new
  def new
    @inspeccion = Inspeccion.new
  end

  # GET /inspeccions/1/edit
  def edit
  end

  # POST /inspeccions or /inspeccions.json
  def create
    @inspeccion = Inspeccion.new(inspeccion_params)

    respond_to do |format|
      if @inspeccion.save
        format.html { redirect_to @inspeccion, notice: "Inspeccion was successfully created." }
        format.json { render :show, status: :created, location: @inspeccion }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @inspeccion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /inspeccions/1 or /inspeccions/1.json
  def update
    respond_to do |format|
      if @inspeccion.update(inspeccion_params)
        format.html { redirect_to @inspeccion, notice: "Inspeccion was successfully updated." }
        format.json { render :show, status: :ok, location: @inspeccion }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @inspeccion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /inspeccions/1 or /inspeccions/1.json
  def destroy
    @inspeccion.destroy
    respond_to do |format|
      format.html { redirect_to inspeccions_url, notice: "Inspeccion was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_inspeccion
      @inspeccion = Inspeccion.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def inspeccion_params
      params.require(:inspeccion).permit(:periodicity)
    end
end
