# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

populate = ->

  flickerAPI = "https://api.flickr.com/services/feeds/photos_public.gne?jsoncallback=?"
  animal = 'dog'
  flickerOptions = {
    tags: animal,
    format: 'json'
  };
  displayImage = (data)->
    $('#photo_photo_link').val(data.items[0].link)
    $('#photo_photo_name').val(data.items[0].title)
    $('#photo_thumb_link').val(data.items[0].media.m)
    $('#photo_photo_descript').val(data.items[0].description)
    $('#descript_visu').html(data.items[0].description)
    $('#photo_photo_tag').val(data.items[0].tags)


  $.getJSON(flickerAPI, flickerOptions, displayImage);

initialize = ->
  $('#photo_photo_link').on('change', populate)


$(document).ready initialize
$(document).on 'page:load', initialize