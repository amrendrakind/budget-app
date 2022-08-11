class UsersController < ApplicationController
  before_action :authenticate_user!
  def index
    @users = params[:user_id] # current_user
  end
end
