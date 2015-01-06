class RedmineIssuePrioritiesPerTrackerHookListener < Redmine::Hook::ViewListener

  def view_layouts_base_html_head(context)
      stylesheet_link_tag 'main', :plugin => :redmine_issue_priorities_per_tracker
      
      javascript_include_tag 'prototype.js', :plugin => :redmine_prototype_js
      javascript_include_tag 'prototype_ujs.js', :plugin => :redmine_prototype_js 
      
     # javascript_include_tag("select2.min.js", :plugin => "redmine_base_select2")
  end

end
