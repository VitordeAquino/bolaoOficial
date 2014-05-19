class UsersController < ApplicationController
	before_filter :authenticate_user!, only: [:show, :edit, :update]
	before_action :set_user, only: [:show, :edit, :meu_palpite]
  before_action :retorna_user, only: [:palpite, :edit_usuario, :update]

	def index
		@users = User.all.where(admin: false).order(placar: :desc, resultado: :desc, pontosGrupoBrasil: :desc)
	end

  def usuarios_cadastrados
    @users = User.all.where(admin: false, pago: false).order(:id)
  end

	def show
	end


	def edit
    @games = @user.games.order(:id)
	end

  def edit_usuario
  end

  def meu_palpite
    @games = @user.games.order(:id)
  end

  def palpite
    @games = @user.games.order(:id) 
  end
  
	def update
    respond_to do |format|
      time = Time.now
      if time.month <= 11 or time.month <= 6
        if !current_user.admin?
          params["user"]["games_attributes"].each do |jogo|
            i = 1
            if jogo[i]["score1"] == "" || jogo[i]["score2"] == ""
              i
              format.html { redirect_to edit_user_path(current_user), flash: {alert: "Preencha todos os placares."}   }
            end
            i += 1
          end
        end
        if @user.update(user_params)
          format.html { redirect_to users_path, notice: 'Palpites atualizados com sucesso' }
          format.json { head :no_content }
        else
          format.html { render action: 'edit' }
          format.json { render json: @user.errors, status: :unprocessable_entity }
        end
      else
        format.html { redirect_to edit_user_path(current_user), flash: {alert: "Ja passou da data limite de modificacao"}  }
      end
    end
  end

  def set_user
    @user = User.find(current_user)
  end

  def retorna_user
    @user = User.find(params[:id])
  end

  def regra
  end

  def user_params
  params.require(:user).permit(:pago,:nome, games_attributes: [:id, :score1, :score2, :_destroy,])
  end

end