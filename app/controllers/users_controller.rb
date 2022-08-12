class UsersController < ApplicationController
  # before_action :authenticate_user!
  def index
    @users = current_user # current_user
  end
end
