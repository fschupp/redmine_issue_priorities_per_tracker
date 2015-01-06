require 'redmine'
require 'prototype-rails'

require File.dirname(__FILE__) + '/lib/tracker_patch.rb'
require File.dirname(__FILE__) + '/lib/issues_controller_patch.rb'
require File.dirname(__FILE__) + '/lib/hooks.rb'

Redmine::Plugin.register :redmine_issue_priorities_per_tracker do
  name 'Redmine Issue Priorities Per Tracker plugin'
  author 'Felix Schupp <fschupp@outlook.com> (forked from Andrey Kolashtov)'
  description 'This is a plugin for Redmine which allows to define issue priorities per tracker.'
  version '0.0.2'
  url 'https://github.com/fschupp/redmine_issue_priorities_per_tracker'
  author_url 'https://github.com/fschupp'
  
  # This currently breaks the rake taks, having it installed is required though...
  # requires_redmine_plugin :redmine_prototype_js, :version_or_higher => '0.0.2'
  
  menu :admin_menu, :issue_priorities_per_tracker, { :controller => 'issue_priorities_per_tracker' }, :caption => :label_issue_priorities_per_tracker
end

# Add patch
# Using dispatcher cause of recreation of model classes without patch on second request in development environment.
# With dispatcher patch applies on model classes on every request.
ActionDispatch::Callbacks.to_prepare do 
  Tracker.send(:include, TrackerPatch)
  IssuesController.send(:include, IssuesControllerPatch)
end
