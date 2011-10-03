require 'redmine'
require 'projects_jumper_hooks'

Redmine::Plugin.register :projects_jumper do
  name 'Redmine Projects Jumper plugin'
  author 'Sylvain Utard'
  description 'Easily jump to a project from anywhere'
  version '0.0.1'
  url 'https://github.com/redox/redmine_projects_jumper'
  author_url 'http://sylvain.utard.info'
end
