class CheckListsController < ApplicationController
  before_action :set_check_list, only: %i[ show edit update destroy ]

  # GET /check_lists or /check_lists.json
  def index
    @check_lists = CheckList.all
  end

  # GET /check_lists/1 or /check_lists/1.json
  def show
  end

  # GET /check_lists/new
  def new
    @check_list = CheckList.new
  end

  # GET /check_lists/1/edit
  def edit
  end

  # POST /check_lists or /check_lists.json
  def create
    @check_list = CheckList.new(check_list_params)

    respond_to do |format|
      if @check_list.save
        format.html { redirect_to @check_list, notice: "Check list was successfully created." }
        format.json { render :show, status: :created, location: @check_list }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @check_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /check_lists/1 or /check_lists/1.json
  def update
    respond_to do |format|
      if @check_list.update(check_list_params)
        format.html { redirect_to @check_list, notice: "Check list was successfully updated." }
        format.json { render :show, status: :ok, location: @check_list }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @check_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /check_lists/1 or /check_lists/1.json
  def destroy
    @check_list.destroy
    respond_to do |format|
      format.html { redirect_to check_lists_url, notice: "Check list was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_check_list
      @check_list = CheckList.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def check_list_params
      params.require(:check_list).permit(:date, :hazard_type)
    end
end
