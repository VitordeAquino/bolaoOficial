class GamesController < ApplicationController
  before_action :set_game, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_user!

  # GET /games
  # GET /games.json
  def index
    @games = User.find(current_user).games.order(:id)
  end

  # GET /games/1
  # GET /games/1.json
  def show
  end

  # GET /games/new
  def new
    @game = Game.new
  end

  # GET /games/1/edit
  def edit
  end

  # POST /games
  # POST /games.json
  def create
    @game = Game.new(game_params)

    respond_to do |format|
      if @game.save
        format.html { redirect_to @game, notice: 'Game was successfully created.' }
        format.json { render action: 'show', status: :created, location: @game }
      else
        format.html { render action: 'new' }
        format.json { render json: @game.errors, status: :unprocessable_entity }
      end
    end
  end


  def desfazer_update(numeroDoJogo)
    @users = User.all
    @games = current_user.games
    @users.each do |user|
      if user.games.find_by_numeroDoJogo(numeroDoJogo).score1 != nil and user.games.find_by_numeroDoJogo(numeroDoJogo).score2 != nil
        if current_user.games.find_by_numeroDoJogo(numeroDoJogo).score1 == user.games.find_by_numeroDoJogo(numeroDoJogo).score1 && current_user.games.find_by_numeroDoJogo(numeroDoJogo).score2 == user.games.find_by_numeroDoJogo(numeroDoJogo).score2
          user.pontos = user.pontos - 3
          user.placar = user.placar - 1
          if numeroDoJogo >= 1 && numeroDoJogo <= 6
            user.pontosGrupoBrasil = user.pontosGrupoBrasil - 3
          end
          user.save
        elsif current_user.games.find_by_numeroDoJogo(numeroDoJogo).score1 > current_user.games.find_by_numeroDoJogo(numeroDoJogo).score2
          if user.games.find_by_numeroDoJogo(numeroDoJogo).score1 > user.games.find_by_numeroDoJogo(numeroDoJogo).score2
            user.pontos = user.pontos - 1
            user.resultado = user.resultado - 1
            if numeroDoJogo >= 1 && numeroDoJogo <= 6
              user.pontosGrupoBrasil = user.pontosGrupoBrasil - 1
            end
            user.save
          end
        elsif current_user.games.find_by_numeroDoJogo(numeroDoJogo).score1 < current_user.games.find_by_numeroDoJogo(numeroDoJogo).score2
          if user.games.find_by_numeroDoJogo(numeroDoJogo).score1 < user.games.find_by_numeroDoJogo(numeroDoJogo).score2
            user.pontos = user.pontos - 1
            user.resultado = user.resultado - 1
            if numeroDoJogo >= 1 && numeroDoJogo <= 6
              user.pontosGrupoBrasil = user.pontosGrupoBrasil - 1
            end
            user.save
          end
        else
          if user.games.find_by_numeroDoJogo(numeroDoJogo).score1 == user.games.find_by_numeroDoJogo(numeroDoJogo).score2
            user.pontos = user.pontos - 1
            user.resultado = user.resultado - 1
            if numeroDoJogo >= 1 && numeroDoJogo <= 6
              user.pontosGrupoBrasil = user.pontosGrupoBrasil - 1
            end
            user.save
          end
        end
      end
    end
  end

  def atualizar_pontos(numeroDoJogo)
    @users = User.all
    @users.each do |user|
      if user.games.find_by_numeroDoJogo(numeroDoJogo).score1 != nil and user.games.find_by_numeroDoJogo(numeroDoJogo).score2 != nil
        if current_user.games.find_by_numeroDoJogo(numeroDoJogo).score1 == user.games.find_by_numeroDoJogo(numeroDoJogo).score1 && current_user.games.find_by_numeroDoJogo(numeroDoJogo).score2 == user.games.find_by_numeroDoJogo(numeroDoJogo).score2
          user.pontos = user.pontos + 3
          user.placar = user.placar + 1
          if numeroDoJogo >= 1 && numeroDoJogo <= 6
            user.pontosGrupoBrasil = user.pontosGrupoBrasil + 3
          end
          user.save
        elsif current_user.games.find_by_numeroDoJogo(numeroDoJogo).score1 > current_user.games.find_by_numeroDoJogo(numeroDoJogo).score2
          if user.games.find_by_numeroDoJogo(numeroDoJogo).score1 > user.games.find_by_numeroDoJogo(numeroDoJogo).score2
            user.pontos = user.pontos + 1
            user.resultado = user.resultado + 1
            if numeroDoJogo >= 1 && numeroDoJogo <= 6
              user.pontosGrupoBrasil = user.pontosGrupoBrasil + 1
            end
            user.save
          end
        elsif current_user.games.find_by_numeroDoJogo(numeroDoJogo).score1 < current_user.games.find_by_numeroDoJogo(numeroDoJogo).score2
          if user.games.find_by_numeroDoJogo(numeroDoJogo).score1 < user.games.find_by_numeroDoJogo(numeroDoJogo).score2
            user.pontos = user.pontos + 1
            user.resultado = user.resultado + 1
            if numeroDoJogo >= 1 && numeroDoJogo <= 6
              user.pontosGrupoBrasil = user.pontosGrupoBrasil + 1
            end
            user.save
          end
        else
          if user.games.find_by_numeroDoJogo(numeroDoJogo).score1 == user.games.find_by_numeroDoJogo(numeroDoJogo).score2
            user.pontos = user.pontos + 1
            user.resultado = user.resultado + 1
            if numeroDoJogo >= 1 && numeroDoJogo <= 6
              user.pontosGrupoBrasil = user.pontosGrupoBrasil + 1
            end
            user.save
          end
        end
      end
    end
  end


  # PATCH/PUT /games/1
  # PATCH/PUT /games/1.json
  def update
    if @game.modificado?
      desfazer_update(@game.numeroDoJogo)
    end
    
    respond_to do |format|

      if @game.update(game_params)
        if current_user.admin?
          atualizar_pontos(@game.numeroDoJogo)
        end
        @game.modificado = true
        @game.save
        format.html { redirect_to @game, notice: 'O jogo foi atualizado com sucesso' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @game.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /games/1
  # DELETE /games/1.json
  def destroy
    @game.destroy
    respond_to do |format|
      format.html { redirect_to games_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_game
      @game = Game.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def game_params
      params.require(:game).permit(:score1, :score2, :numeroDoJogo, :user_id, :time1, :time2, :modificado )
    end
end
