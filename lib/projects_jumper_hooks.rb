class LastReviewsHooks < Redmine::Hook::ViewListener
  
  def view_layout_base_before_main_menu(context = {})
    show_menu(context)
  end

  def view_layout_base_after_main_menu(context = {})
  end

  def view_layout_base_no_main_menu(context = {})
    show_menu(context)
  end

  private
  def show_menu(context)
    projects = Project.visible.all
    context[:controller].render_to_string("/projects_jumper/menu", :locals => { :projects => projects, :current_project => context[:project] }, :layout => false)
  end

end
