module UserHelper

  def user_params
    params.require(:user).permit(:name, :provider, :uid, :refresh_token, :access_token, :expires)
  end

end
