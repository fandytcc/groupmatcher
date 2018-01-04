class GroupsController < ApplicationController
  before_action :authenticate_user!, except: [:show]

  def index
    @groups = Group.all
    @group = Group.new
  end

  def create
  end

  private

  def groups_params
    params.require(:group).permit(:groups, :day)
  end



end
