# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/


initialize = ->
  $ ->
    $('.status').hover (event) ->
      $(this).toggleClass 'hover'
      return
    return
  return

$(document).ready initialize
$(document).on 'page:load', initialize