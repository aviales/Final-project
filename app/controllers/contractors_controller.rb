class ContractorsController < ApplicationController
  before_action :set_contractor, only: %i[ show edit update destroy ]
   # before_action :authenticate_admin!, except: [:new, :create, :show, :index]
  before_action :set_contractor_type, only: %i[ show edit update destroy new ]
  before_action :authenticate_user!, except: %i[ index search ]
 
  # GET /contractors or /contractors.json
  def index
    @contractors = Contractor.all.order(:name)
    @inspeccion = Inspeccion.all
    @contractor = Contractor.new
    @contractor.contractor_types.build    
    @contractor_types = ContractorType.all
  end

  # GET /contractors/1 or /contractors/1.json
  def show
  end

  # GET /contractors/new
  def new
    @inspeccion = Inspeccion.all
    @contractor = Contractor.new
    @contractor.contractor_types.build
     
  end

  # GET /contractors/1/edit
  def edit
    @contractor.contractor_types.build
  end

  # POST /contractors or /contractors.json
  def create
    @contractor = Contractor.new(contractor_params.merge(user: current_user)) 
    @inspeccion = Inspeccion.all
   
    respond_to do |format|
      if @contractor.save
        format.html { redirect_to @contractor, notice: "Contractor was successfully created." }
        format.json { render :show, status: :created, location: @contractor }
      else
        format.html { render :new }
        format.json { render json: @contractor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /contractors/1 or /contractors/1.json
  def update
    respond_to do |format|
      if @contractor.update(contractor_params)
        format.html { redirect_to @contractor, notice: "Contractor was successfully updated." }
        format.json { render :show, status: :ok, location: @contractor }
        format.js
      else
        format.html { render :edit }
        format.json { render json: @contractor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /contractors/1 or /contractors/1.json
  def destroy
    @contractor.destroy
    respond_to do |format|
      format.html { redirect_to contractors_url, notice: "Contractor was successfully destroyed." }
      format.json { head :no_content }
      
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contractor
      @contractor = Contractor.find(params[:id])
    end

    def typ_params
      params.require(:contractor_type)
    end

    # def contractor_types
    #   @contractor_type = ContractorType.all
    # end

    def set_contractor_type
      @contractor_type = ContractorType.all
    end
    def set_inspeccion    
      @inspeccion = Inspeccion.find(params[:inspeccion_id])
    end
    # Only allow a list of trusted parameters through.
    def contractor_params
      params.require(:contractor).permit(:name, :inspeccion_id, contractor_types_attributes: [:name] )
    end
end
