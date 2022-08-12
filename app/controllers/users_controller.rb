class UsersController < ApplicationController
  before_action :set_user, only: %i[show edit update destroy]
  # before_action :authenticate_user!
  def index
    @users = current_user # current_user
  end
end
