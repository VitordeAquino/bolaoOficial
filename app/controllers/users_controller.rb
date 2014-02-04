class UsersController < ApplicationController
	before_filter :authenticate_user!
	before_action :set_user, only: [:show, :edit, :update]
  # after_update :atualizar_pontos, if: :current_user.
	def index
		@users = User.all
	end

	def show
	end

  def atualizar_pontos()
   @users = User.all
    @users.each do |user|
      user.pontos = 0
      contador = 1 
      while(contador < 7 && current_user.games.find_by_numeroDoJogo(contador).score1 != nil)
        if current_user.games.find_by_numeroDoJogo(contador).score1 == user.games.find_by_numeroDoJogo(contador).score1 && current_user.games.find_by_numeroDoJogo(contador).score2 == user.games.find_by_numeroDoJogo(contador).score2
          user.pontos = user.pontos + 3
          user.save
    
        elsif current_user.games.find_by_numeroDoJogo(contador).score1 > current_user.games.find_by_numeroDoJogo(contador).score2
          if user.games.find_by_numeroDoJogo(contador).score1 > user.games.find_by_numeroDoJogo(contador).score2
            user.pontos = user.pontos + 1
            user.save
          end
        elsif current_user.games.find_by_numeroDoJogo(contador).score1 < current_user.games.find_by_numeroDoJogo(contador).score2
          if user.games.find_by_numeroDoJogo(contador).score1 < user.games.find_by_numeroDoJogo(contador).score2
            user.pontos = user.pontos + 1
            user.save
          end
        else
          if user.games.find_by_numeroDoJogo(contador).score1 == user.games.find_by_numeroDoJogo(contador).score2
            user.pontos = user.pontos + 1
            user.save
          end
        end
      contador = contador + 1
      end
    end
  end

  def palpite
    @games = User.find(current_user).games
  end

	def edit
	end

	def update
    respond_to do |format|
      if current_user.admin?
          atualizar_pontos()
      end
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

  def user_params
  params.require(:user).permit(games_attributes: [:id, :score1, :score2, :_destroy,])
  end

end