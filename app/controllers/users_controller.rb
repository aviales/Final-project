class UsersController < ApplicationController
  # before_action :set_user, only: %i[ show edit update destroy ]

  def index
    #  @users = User.all.order(created_at: :asc)
    @users = User.all
    @check_list = CheckList.all
    respond_to do |format|
      format.html
      format.js
    end
      @users = User.joins(:contractor).group("contractors.name").count
     
    
  end

  def form
  end

  def edit
  end

  def new
    @user = User.new
    respond_to do |format|
      format.html
      format.js
    end
  end

  def show
  
  end

  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to @user, notice: "user was successfully updated." }
        format.json { render :show, status: :ok, location: @user }
        format.js        
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  
  end
  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url, notice: "user was successfully destroyed." }
      format.json { head :no_content }
      format.js       
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  # def set_user
  #   @user = User.find(params[:id])
  # end

  # Only allow a list of trusted parameters through.
  def user_params
    params.require(:user).permit(:first_name, :last_name, :profile_picture,:check_list)
  end
  
end
