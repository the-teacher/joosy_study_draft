#= require hamlcoffee
#= require jquery
#= require joosy
#= require joosy/resources
#= require joosy/railties
#= require sugar

#= require_tree ./common
#= require_tree ./helpers
#= require_tree ./layouts
#= require_tree ./templates
#= require_tree ./resourses
#= require_tree ./pages
#= require routes

$ ->
  Joosy.Application.initialize 'body',
    router:
      html5: true