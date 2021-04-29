class CheckListItemsController < ApplicationController
  before_action :set_check_list_item, only: %i[ show edit update destroy ]

  # GET /check_list_items or /check_list_items.json
  def index
    @check_list_items = CheckListItem.all.order(:value)
  end

  # GET /check_list_items/1 or /check_list_items/1.json
  def show
  end

  # GET /check_list_items/new
  def new
    @check_list_item = CheckListItem.new
    @check_lists = CheckList.all
  end

  # GET /check_list_items/1/edit
  def edit
  end

  # POST /check_list_items or /check_list_items.json
  def create
    @check_list_item = CheckListItem.new(check_list_item_params)

    respond_to do |format|
      if @check_list_item.save
        format.html { redirect_to @check_list_item, notice: "Check list item was successfully created." }
        format.json { render :show, status: :created, location: @check_list_item }
      else
        format.html { render :new }
        format.json { render json: @check_list_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /check_list_items/1 or /check_list_items/1.json
  def update
    respond_to do |format|
      if @check_list_item.update(check_list_item_params)
        format.html { redirect_to @check_list_item, notice: "Check list item was successfully updated." }
        format.json { render :show, status: :ok, location: @check_list_item }
      else
        format.html { render :edit }
        format.json { render json: @check_list_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /check_list_items/1 or /check_list_items/1.json
  def destroy
    @check_list_item.destroy
    respond_to do |format|
      format.html { redirect_to check_list_items_url, notice: "Check list item was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_check_list_item
      @check_list_item = CheckListItem.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def check_list_item_params
      params.require(:check_list_item).permit(:value, :text, :check_list_id)
    end
end
