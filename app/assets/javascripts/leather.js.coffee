$ ->
  if $(".off-canvas").length > 0
    console.log "setting up off-canvas"
    
    $('body').wrapInner("<div id='off-canvas-wrapper' />")

    $(".off-canvas, .fixed").each ->
      $("#off-canvas-wrapper").before(this)
      
    $(document).on 'click', '[data-toggle="off-canvas"]', (e) ->
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

    $(document).on 'click touchstart', '.off-canvas-show-left, .off-canvas-show-right', (e) ->
      if e.handled != true
        e.preventDefault()
        unless ($(e.target).hasClass("off-canvas") || $(e.target).data('toggle') == "off-canvas")
          $(this).removeClass("off-canvas-show-right")
          $(this).removeClass("off-canvas-show-left")
        e.handled = true