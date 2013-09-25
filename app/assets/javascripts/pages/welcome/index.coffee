Joosy.namespace 'Welcome', ->
  class @IndexPage extends ApplicationPage
    
    @layout ApplicationLayout
    @view   'index'

    @mapElements
      content: '#content'
      joosy:   '.joosy'

    @mapEvents
      'mouseover $joosy': 'stopHeartbeat'
      'mouseout  $joosy': 'startHeartbeat'

    @beforeLoad ->
      log 'I::beforeLoad'

    @fetch (complete) ->
      log 'I::fetch ' + (new Date).toTimeString()
      do complete

    @afterLoad ->
      @startHeartbeat()
      @$content().css
        'padding-top': "#{$(window).height() / 2 - 80}px"

    @erase (complete) ->
      log 'I::erase'
      do @stopHeartbeat
      do complete

    stopHeartbeat: ->
      log 'stopHeartbeat'
      clearInterval @heartbeat

    startHeartbeat: ->
      @heartbeat = @setInterval 1500, =>
        @$joosy().animate({opacity: 0.8}, 300).animate({opacity: 1}, 300)