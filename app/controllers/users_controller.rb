class UsersController < ApplicationController
  def create
    @user = User.create_user_by_params(params)
  end

  def show
    @user = User.query_user_by_params(params)
  end
end
