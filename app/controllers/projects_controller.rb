class ProjectsController < ApplicationController
  before_action :set_project, only: %i[ show edit update destroy ]
  # before_action :authenticate_admin!, except: [:index, :new, :create, :show ]
  before_action :authenticate_user!, except: %i[ ]
  
  # GET /projects or /projects.json
  def index
    @projects = Project.all
  end
    def api_project  
      project= Project.find(params[:id])
      hash = {
        name: project.name,
        start_date: project.start_date,
        finish_date: project.finish_date,
        periodicity: project.periodicity,
        user_id: project.user_id, 
        inspeccions: project.inspeccions.pluck(:id)
      }
      render json: hash
    end
 

  # GET /projects/1 or /projects/1.json
  def show
  end

  # GET /projects/new
  def new
    @project = Project.new
  end

  # GET /projects/1/edit
  def edit
    # @inspeccion = inspeccion_url.when(available: true).order("date")
    @project.inspeccions.build
  end

  # POST /projects or /projects.json
  def create
    @project = Project.new(project_params.merge(user: current_user))

    respond_to do |format|
      if @project.save
        format.html { redirect_to @project, notice: "Project was successfully created." }
        format.json { render :show, status: :created, location: @project }
        
      else
        format.html { render :new }
        format.json { render json: @project.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /projects/1 or /projects/1.json
  def update
    respond_to do |format|
      if @project.update(project_params)
        format.html { redirect_to @project, notice: "Project was successfully updated." }
        format.json { render :show, status: :ok, location: @project }
      else
        format.html { render :edit }
        format.json { render json: @project.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /projects/1 or /projects/1.json
  def destroy
    @project.destroy
    respond_to do |format|
      format.html { redirect_to projects_url, notice: "Project was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_project
      @project = Project.find(params[:id])
    end
   
    # Only allow a list of trusted parameters through.
    def project_params
      params.require(:project).permit(:name, :start_date, :finish_date, :id, periodicity:[] )
    end
end
