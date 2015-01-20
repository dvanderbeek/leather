$ ->
  $("body").on "click", "[data-toggle='off-canvas']", ->
    target = $(this).data("target")
    $(target).toggleClass("in")

  $("body").on "click", "[data-toggle='columns']", ->
    $('#left').toggleClass('hidden-xs')
    $('#right').toggleClass('hidden-xs')