class RedmineIssuePrioritiesPerTrackerHookListener < Redmine::Hook::ViewListener
  
  render_on(:view_layouts_base_html_head, :partial => "html_head")
  
  def view_layouts_base_html_head(context)
      stylesheet_link_tag 'main', :plugin => :redmine_issue_priorities_per_tracker
  end

end

#class Hooks < Redmine::Hook::ViewListener
#render_on(:view_layouts_base_html_head, :partial => "html_head")  
#end
