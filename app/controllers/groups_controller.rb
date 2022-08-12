class GroupsController < ApplicationController
  before_action :authenticate_user!
  def index
    @groups = Group.where(user_id: current_user.id)
  end

  def new
    @group = Group.new
  end

  def create
    @group = Group.new(group_params)
    @group.user_id = current_user.id

    if @group.save
      flash[:notice] = 'Category was successfully created.'
      redirect_to groups_path
    else
      flash[:error] = 'Error creating Group'
      redirect_to new_groups_path(@group)
    end
  end

  def destroy
    if @group.destroy
      flash[:notice] = 'Category was successfully destroyed.'
      redirect_to @group
    else
      flash[:error] = 'Error deleting category'
    end
  end

  def group_params
    params.require(:group).permit(:name, :icon)
  end
end
