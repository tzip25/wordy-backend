class Api::V1::GamesController < ApplicationController

  def index
    @games = Game.all
    render json: @games
  end

  def create
    @user = User.find_by(username: params[:username])
    Game.create(user_id: @user.id, score: params[:score], longest_word: params[:longest_word], time: params[:time])
  end

end
