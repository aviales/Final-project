class InspeccionsController < ApplicationController
  before_action :set_inspeccion, only: %i[ show edit update destroy ]
  #before_action :authorize_admin!, except: [:index, :new, :create ]
  before_action :set_project, only: %i[ create update ]
  # GET /inspeccions or /inspeccions.json
  def index
    @inspeccions = current_user.inspeccions
    if params[:project_id]
      @project = Project.find(params[:project_id])
      @inspeccions = @project.inspeccions.order(:date) 
    end
    @check_lists = CheckList.all
    @inspeccion= Inspeccion.all
  end

  # GET /inspeccions/1 or /inspeccions/1.json
  def show
  end

  # GET /inspeccions/new
  def new
   
    @inspeccion = Inspeccion.new
    @contractor = Contractor.all
  end

  # GET /inspeccions/1/edit
  def edit
    @check_list = CheckList.all
  end

  # POST /inspeccions or /inspeccions.json
  def create
    @inspeccion = Inspeccion.new(inspeccion_params.merge(project: set_project, user_id: current_user.id))
   @check_lists = CheckList.where(id:params[:inspeccion][:check_list_ids])
    @inspeccion.check_lists.push(@check_lists)

    respond_to do |format|
      if @inspeccion.save
        format.html { redirect_to project_inspeccions_path(@inspeccion.project), notice: "Inspeccion was successfully created." }
        format.json { render :show, status: :created, location: @inspeccion }
      else
        format.html { render :new }
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
        format.html { render :edit }
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

    def set_project
      @project = Project.find(params[:inspeccion][:project_id]) if params[:inspeccion][:project_id] || !params
    end

    def set_check_list
      @check_list = CheckList.find(params[:id])
      
    end
    
    def set_check_list
      @check_list = CheckList.all
    end

    # Only allow a list of trusted parameters through.
    def inspeccion_params
      params.require(:inspeccion).permit( :date, :project_id, :contractor_id, :check_list_ids)
    end
    
end
