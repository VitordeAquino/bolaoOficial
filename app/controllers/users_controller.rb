class UsersController < ApplicationController
	before_filter :authenticate_user!, only: [:show, :edit, :update, :palpite]
	before_action :set_user, only: [:show, :edit, :update]
  before_action :retorna_user, only: [:palpite]

	def index
		@users = User.all.where(admin: false)
	end

	def show
	end


	def edit
    @games = @user.games
	end


  def palpite
    @games = @user.games 
  end
  
	def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to palpite_path, notice: 'User was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  def set_user
    @user = User.find(current_user)
  end

  def retorna_user
    @user = User.find(params[:id])
  end

  def user_params
  params.require(:user).permit(games_attributes: [:id, :score1, :score2, :_destroy,])
  end

end