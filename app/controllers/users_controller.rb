class UsersController < ApplicationController
	before_filter :authenticate_user!
	before_action :set_user, only: [:show, :edit, :update]

	def index
		@users = User.all
	end

	def show
	end

  def atualizarPontos
    contadorWhile = 0
    while  contadorWhile <= 6 do
     
      userScore1 = current_user.games.find_by_numeroDoJogo(contadorWhile).score1
      userScore2 = current_user.games.find_by_numeroDoJogo(contadorWhile).score2
      tabelaScore1 = User.find_by_email("vitordeaquino@gmail.com").games.find_by_numeroDoJogo(contadorWhile).score1
      tabelaScore2 = User.find_by_email("vitordeaquino@gmail.com").games.find_by_numeroDoJogo(contadorWhile).score2
      
      if userScore1 > userScore2
        if tabelaScore1 > tabelaScore1
          current_user.pontos = current_user.pontos + 1
        end
  

      elsif userScore1 < userScore2
        if tabelaScore1 < tabelaScore1
          current_user.pontos = current_user.pontos + 1
        end

      elsif userScore1 < userScore2
        if tabelaScore1 < tabelaScore1
          current_user.pontos = current_user.pontos + 1
        end
      end

      if userScore1 == tabelaScore1 && userScore2 == tabelaScore2
        current_user.pontos = current_user.pontos + 2
      end
      contadorWhile = contadorWhile + 1 
    end
    current_user.update
  end

  def atualizarTodosUsers
    current_user.pontos = 6
    current_user.update
  end


  def palpite
    @games = User.find(current_user).games
  end

	def edit
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

  def user_params
  params.require(:user).permit(games_attributes: [:id, :score1, :score2, :_destroy,])
  end

end