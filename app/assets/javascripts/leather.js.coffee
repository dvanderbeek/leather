$ ->
  if $(".off-canvas").length > 0
    $('body').wrapInner("<div id='off-canvas-wrapper' />")

    $(".off-canvas, .fixed").each ->
      $("#off-canvas-wrapper").before(this)

    $("#off-canvas-wrapper, .fixed").bind "mouseup", ->
      return

    $(document).on 'click touchstart', '[data-toggle="off-canvas"]', (e) ->
      e.stopPropagation()
      e.preventDefault()
      if e.handled != true
        side = $(this).data('side')
        if side == "left"
          $('body').removeClass "off-canvas-show-right"
        if side == "right"
          $('body').removeClass "off-canvas-show-left"
        $('body').toggleClass("off-canvas-show-#{side}")
        e.handled = true
      else
        false

    $(document).on 'click touchstart', 'body', (e) ->
      if $('body').hasClass("off-canvas-show-left") || $('body').hasClass("off-canvas-show-right") and e.handled != true
        e.preventDefault()
        unless ($(e.target).hasClass("off-canvas") || $(e.target).data('toggle') == "off-canvas")
          $(this).removeClass("off-canvas-show-right")
          $(this).removeClass("off-canvas-show-left")
        e.handled = true