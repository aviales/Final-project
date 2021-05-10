class WorkAreasController < ApplicationController
  before_action :set_work_area, only: %i[ show edit update destroy ]
  before_action :set_check_list, only: %i[ edit update destroy ]
  # before_action :authenticate_admin!, except: [:new, :create, :show, :index]
  # GET /work_areas or /work_areas.json
  def index
    @work_areas = WorkArea.all.order(:name)
    @work_area = WorkArea.new
    @check_list = CheckList.all    
  end

  # GET /work_areas/1 or /work_areas/1.json
  def show
  end

  # GET /work_areas/new
  def new
    @work_area = WorkArea.new
    @check_list = CheckList.all
  end

  # GET /work_areas/1/edit
  def edit
    @work_area.build
  end

  # POST /work_areas or /work_areas.json
  def create
    @work_area = WorkArea.new(work_area_params)
    @check_list = CheckList.all

    respond_to do |format|
      if @work_area.save
        format.html { redirect_to @work_area, notice: "Work area was successfully created." }
        format.json { render :show, status: :created, location: @work_area }
      else
        format.html { render :new }
        format.json { render json: @work_area.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /work_areas/1 or /work_areas/1.json
  def update
    respond_to do |format|
      if @work_area.update(work_area_params)
        format.html { redirect_to @work_area, notice: "Work area was successfully updated." }
        format.json { render :show, status: :ok, location: @work_area }
      else
        format.html { render :edit }
        format.json { render json: @work_area.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /work_areas/1 or /work_areas/1.json
  def destroy
    @work_area.destroy
    respond_to do |format|
      format.html { redirect_to work_areas_url, notice: "Work area was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_work_area
      @work_area = WorkArea.find(params[:id])
    end

    def set_check_list
      @check_list = CheckList.find(params[:id])
      
    end
    # Only allow a list of trusted parameters through.
    def work_area_params
      params.require(:work_area).permit(:name, :check_list_id)
    end
end
