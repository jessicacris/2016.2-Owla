module SessionsHelper

  def log_in(member)
    session[:member_id] = member.id
  end

  def current_member
    @current_member ||= Member.find_by(id: session[:member_id]) if session[:member_id]
  end

  def logged_in?
    !current_member.nil?
  end

  def log_out
    session.delete(:member_id)
    @current_member = nil
  end

  def authenticate_member
    if !logged_in?
      redirect_to root_path
    end
  end

  def not_allow_to_enter_login
    if logged_in?
      redirect_to home_path(current_member)
    end
  end
end
