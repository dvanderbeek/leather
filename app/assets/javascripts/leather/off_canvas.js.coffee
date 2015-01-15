$ ->
  $(".toggle-sidebar").click ->
    $("#sidebar").toggleClass("collapsed")

  if $(".off-canvas").length > 0
    offCanvas.init()

offCanvas =
  init: ->
    @setupDocument()
    @bindEvents()

  setupDocument: ->
    $('body').wrapInner("<div id='off-canvas-wrapper' />")
    $(".off-canvas, .fixed").each ->
      $("#off-canvas-wrapper").before(this)

  bindEvents: ->
    $(document).on 'click', '[data-toggle="off-canvas"]', (e) ->
      if !e.handled
        e.handled = offCanvas.toggle($(this), e)

    $(document).on 'click touchstart', (e) ->
      if $('body').hasClass('off-canvas-show-left') || $('body').hasClass('off-canvas-show-right')
        clicked = $(e.target)
        if !e.handled && (offCanvas.isBody(clicked) || offCanvas.isClose(clicked))
          e.handled = offCanvas.close(e)

  isBody: (clicked) ->
    (!clicked.hasClass("off-canvas") && clicked.parents(".off-canvas").length == 0)

  isClose: (clicked) ->
    (clicked.parents(".off-canvas").length && clicked.hasClass("close"))

  toggle: (target, e) ->
    e.stopPropagation()
    e.preventDefault()
    side = target.data('side')
    if side == "left"
      $('body').removeClass "off-canvas-show-right"
    if side == "right"
      $('body').removeClass "off-canvas-show-left"
    $('body').toggleClass("off-canvas-show-#{side}")
    true

  close: (e) ->
    e.preventDefault()
    e.stopPropagation()
    $('body').removeClass("off-canvas-show-right")
    $('body').removeClass("off-canvas-show-left")
    true