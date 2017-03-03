class HomeController < ApplicationController
  def index
    @user = User.first
    @user.update_attributes(user_params) if request.post? 
  end

  private
  def user_params
    params.require(:user).permit(:avatar)
  end
end
