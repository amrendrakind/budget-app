class GroupsController < ApplicationController
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
      redirect_to group_path(@group)
    else
      redirect_to new_groups_path(@group)
    end
  end

  def destroy
    @group.destroy
    redirect_to @group
  end

  def group_params
    params.require(:group).permit(:name, :icon)
  end
end
