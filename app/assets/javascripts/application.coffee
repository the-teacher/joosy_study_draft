#= require hamlcoffee
#= require jquery
#= require joosy
#= require joosy/resources
#= require joosy/railties
#= require sugar

#
#= require_tree ./

$ ->
  Joosy.Application.initialize 'body',
    router:
      html5: true