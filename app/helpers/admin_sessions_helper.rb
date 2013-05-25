module AdminSessionsHelper
  def admin_sign_in(admin)
    session[:admin_id] = admin.id
    self.current_admin = admin
  end

  def admin_sign_out
    reset_session
  end

  def current_admin=(admin)
    @current_admin = admin
  end

  def current_admin
    @current_admin ||= admin.find_by_id(session[:admin_id])
  end

  def admin_signed_in?
    !current_admin.nil?
  end
end