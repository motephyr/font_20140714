class VisitorsController < ApplicationController
  before_action :find_game
  def new
    @visitor = @game.visitors.new
  end

  def edit
    @visitor = @game.visitors.find(params[:id])
  end

  def create
    @visitor = @game.visitors.build(visitor_params)
    @visitor.number = @game.visitors.size

    if @visitor.save
      redirect_to game_path(@game)
    else
      render :new
    end
  end

  def update
    @visitor = @game.visitors.find(params[:id])

    if @visitor.update(visitor_params)
      redirect_to game_path(@game)
    else
      render :edit
    end
  end

  private
  def visitor_params
    params.require(:visitor).permit(:name,:image,:title)
  end

  def find_game
    @game = Game.find(params[:game_id])
  end
end
