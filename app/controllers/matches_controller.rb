class MatchesController < ApplicationController
  before_action :authenticate_user!

  def index
    @matches = Match.all.order(:id)
    @match = Match.new
  end

  def create
    day = params[:match][:day]
    match_today = Match.select { |match| match.day == day.to_date }

    if match_today.blank?
      generate_groups(day)
    end
    redirect_to action: 'index'
  end

  # def show
  #   @match = Match.find(params[:id])
  # end

  def generate_groups(day)
    schedule = Group.new.days
    schedule.each do |day, match|
      Match.create!(day: Date.today + day-1, matches: match)
    end
    # redirect_to matches_path
  end

  private

  def match_params
    params.require(:match).permit(:day, :matches)
  end

end
