class UsersController < ApplicationController
  def index
    @users = params[:user_id] # current_user
  end
end
