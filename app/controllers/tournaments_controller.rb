class TournamentsController < ApplicationController
  before_action :set_tournament, only: [:show, :update, :destroy]

  # GET /tournaments
  # GET /tournaments.json
  def index
    @tournaments = Tournament.all

    render json: @tournaments
  end

  # GET /tournaments/1
  # GET /tournaments/1.json
  def show
    render json: @tournament
  end

  # POST /tournaments
  # POST /tournaments.json
  def create
    @tournament = Tournament.new(tournament_params)

    if @tournament.save
      render json: @tournament, status: :created, location: @tournament
    else
      render json: @tournament.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /tournaments/1
  # PATCH/PUT /tournaments/1.json
  def update
    @tournament = Tournament.find(params[:id])

    if @tournament.update(tournament_params)
      head :no_content
    else
      render json: @tournament.errors, status: :unprocessable_entity
    end
  end

  # DELETE /tournaments/1
  # DELETE /tournaments/1.json
  def destroy
    @tournament.destroy

    head :no_content
  end

  private

    def set_tournament
      @tournament = Tournament.find(params[:id])
    end

    def tournament_params
      params.require(:tournament).permit(:title, :description, :num_rounds, :num_players, :winner, :start_date, :end_date)
    end
end
