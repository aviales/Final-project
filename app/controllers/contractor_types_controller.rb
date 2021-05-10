class ContractorTypesController < ApplicationController
  before_action :set_contractor_type, only: %i[ :create show edit update destroy ]
  # before_action :set_contractor, only [ :create]
  # GET /contractor_types or /contractor_types.json
  def index
    @contractor_types = ContractorType.all.order(:name)

  end

  # GET /contractor_types/1 or /contractor_types/1.json
  def show
  end

  # GET /contractor_types/new
  def new
    @contractor_type = ContractorType.new
    @contractor = Contractor.all
  end

  # GET /contractor_types/1/edit
  def edit
    @contractor.build
    @contractor.contractor_types.build
  end
  # POST /contractor_types or /contractor_types.json
  def create
    @contractor_type = ContractorType.new(contractor_type_params)
    @contractor = Contractor.all
    respond_to do |format|
      if @contractor_type.save
        format.html { redirect_to @contractor_type, notice: "Contractor type was successfully created." }
        format.json { render :show, status: :created, location: @contractor_type }
        format.js
      else
        format.html { render :new }
        format.json { render json: @contractor_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /contractor_types/1 or /contractor_types/1.json
  def update
    respond_to do |format|
      if @contractor_type.update(contractor_type_params)
        format.html { redirect_to @contractor_type, notice: "Contractor type was successfully updated." }
        format.json { render :show, status: :ok, location: @contractor_type }
        format.js
      else
        format.html { render :edit }
        format.json { render json: @contractor_type.errors, status: :unprocessable_entity }
      end
    end
  end
  
  # DELETE /contractor_types/1 or /contractor_types/1.json
  def destroy
    @contractor_type.destroy
    respond_to do |format|
      format.html { redirect_to contractor_types_url, notice: "Contractor type was successfully destroyed." }
      format.json { head :no_content }
    end
  end
  
  
  private
    # Use callbacks to share common setup or constraints between actions.
    
    def set_contractor_type
      @contractor_type = ContractorType.find(params[:id])
    end

    def contractor_contractor_type
      @contractors = Contractor.where(contractor_type: typ_params)
      render json: @contractors.as_json(include: :contractor_type)
    end
    def typ_params
      params.require(:contractor_type)
    end

    def set_contractor
      @contractor = Contractor.find(params[:contractor_id])
    end
    # Only allow a list of trusted parameters through.
    def contractor_type_params
      params.require(:contractor_type).permit(:id,:name, :contractor_id)
    end
end
