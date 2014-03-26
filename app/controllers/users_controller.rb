class UsersController < ApplicationController
	before_filter :authenticate_user!, only: [:show, :edit, :update, :palpite]
	before_action :set_user, only: [:show, :edit, :meu_palpite]
  before_action :retorna_user, only: [:palpite, :edit_usuario, :update]

	def index
		@users = User.all.where(admin: false)
	end

  def usuarios_cadastrados
    @users = User.all.where(admin: false)
  end

	def show
	end


	def edit
    @games = @user.games
	end

  def edit_usuario
  end

  def meu_palpite
    @games = @user.games
  end

  def palpite
    @games = @user.games 
  end
  
	def update
    respond_to do |format|
      if @user.update(user_params)
        @games = @user.games 
        @games.each do |game|
          if game.score1 == nil 
            format.html { redirect_to edit_user_path(current_user), flash: {alert: "Preencha todos os jogos"}  }
          end
          if game.score2 == nil
            format.html { redirect_to edit_user_path(current_user), flash: {alert: "Preencha todos os jogos"}  }
          end
        end
        format.html { redirect_to users_path, notice: 'Palpites atualizados com sucesso' }
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
  params.require(:user).permit(:pago, games_attributes: [:id, :score1, :score2, :_destroy,])
  end

end