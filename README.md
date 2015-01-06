Redmine issue priorities per tracker plugin
========================

This is a plugin for Redmine which allows to define issue priorities per tracker. Forked from flant/redmine_issue_priorities_per_tracker

Since PrototypeJS was removed in Rails 3.2, this plugin now depends on the [redmine_prototype_js](http://github.com/fschupp/redmine_prototype_js) Plugin which provides this functionality.

*_Note_*: You do not have to enable the loading of the libraries since the controller automatically loads prototype.js when necessary. 

Please apply general instructions for plugins [here](http://www.redmine.org/wiki/redmine/Plugins). This plugin requires [prototype-rails](https://github.com/rails/prototype-rails) which is installed in Step 2 of this recipe:

1. git clone https://github.com/fschupp/redmine_issue_priorities_per_tracker.git

2. bundle install

3. bundle exec rake redmine:plugins RAILS_ENV=production

4. Restart your webserver passenger/apache whatever you have

Modified to work with Redmine 2.6, work in progress. 
