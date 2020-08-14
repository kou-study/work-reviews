module SessionsHelper
    def current_user
        @current_user ||= User.find_by(id: session[:user_id])
    end
=begin
    if @current_user
        return @current_user
    else
        @current_user = User.find_by(id: session[:user_id])
        return @current_user
    end
    と同様の処理
=end

    def logged_in?
       !!current_user
    end
=begin
    if current_user
        return true
    else
        return false
    end
    と同様の処理
=end
end
