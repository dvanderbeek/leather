$ ->
  $(document).on 'click', '[data-toggle="off-canvas"]', ->
    side = $(this).data('side')
    if side == "left"
      $('body').removeClass "off-canvas-show-right"
    if side == "right"
      $('body').removeClass "off-canvas-show-left"
    $('body').toggleClass("off-canvas-show-#{side}")

  $('body').click (e) ->
    unless ($(e.target).hasClass("off-canvas") || $(e.target).data('toggle') == "off-canvas")
      $(this).removeClass("off-canvas-show-right")
      $(this).removeClass("off-canvas-show-left")