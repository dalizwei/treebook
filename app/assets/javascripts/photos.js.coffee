# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

#start def populate
populate = ->
  flickerAPI = "https://api.flickr.com/services/feeds/photos_public.gne?jsoncallback=?"
  animal = 'dog'
  flickerOptions = {
    tags: animal,
    format: 'json'
  };
  populateFields = (data)->
    $('#photo_photo_link').val(data.items[0].link)
    $('#photo_photo_name').val(data.items[0].title)
    $('#photo_thumb_link').val(data.items[0].media.m)
    $('#photo_photo_descript').val(data.items[0].description)
    $('#descript_visu').html(data.items[0].description)
    $('#photo_photo_tag').val(data.items[0].tags)
  $.getJSON(flickerAPI, flickerOptions, populateFields);
#end def populate

#start def populate
populate2 = ->

  flickerAPI ='/photos/ammar'
  animal = 'dog'
  flickerOptions = {};
  populateFields = (data)->
    $('#photo_photo_link').val(data[0].link)
    $('#photo_photo_name').val(data[0].title)
    $('#photo_thumb_link').val(data[0].media.m)
    $('#photo_photo_descript').val(data[0].description)
    $('#descript_visu').html(data[0].description)
    $('#photo_photo_tag').val(data[0].tags)

  $.getJSON(flickerAPI, flickerOptions, populateFields);
#end def populate

#start refresh
refresh = ->
  refreshURL = '/photos.json'
  refreshOptions = {};
  displayPhotos = (data)->
    tempHTML=''
    $('#list_photos').html(tempHTML)
    $.each(data, (i, photo)->
      tempHTML += '<div class="col-sm-6 col-md-4">'
      tempHTML += '<div class="thumbnail">'
      tempHTML += '<img src="'+photo.thumb_link+'"alt="...">'
      tempHTML += '<div class="caption">'
      tempHTML += '<h3>'+photo.photo_name+'</h3>'
      tempHTML += '<p>'+photo.photo_descript+'</p>'
      tempHTML += '<p><a href="#" class="btn btn-primary" role="button">Button</a> <a href="#" class="btn btn-default" role="button">Button</a></p>'
      tempHTML += '</div>'
      tempHTML += '</div>'
      tempHTML += '</div>'
    );
    $('#list_photos').html(tempHTML)
  $.getJSON(refreshURL, refreshOptions, displayPhotos);
#end refresh

refresh2 = ->
  refreshURL = '/photos/ammar'
  refreshOptions = {};
  displayPhotos = (data)->
    tempHTML=''
    $('#list_photos').html(tempHTML)
    $.each(data, (i, photo)->
      tempHTML += '<div class="col-sm-6 col-md-4">'
      tempHTML += '<div class="thumbnail">'
      #tempHTML += '<img src="'+photo.media.m+'"alt="...">'
      tempHTML += '<div class="caption">'
      tempHTML += '<h3>'+photo.title+'</h3>'
      tempHTML += '<p>'+photo.description+'</p>'
      tempHTML += '<p><a href="#" class="btn btn-primary" role="button">Button</a> <a href="#" class="btn btn-default" role="button">Button</a></p>'
      tempHTML += '</div>'
      tempHTML += '</div>'
      tempHTML += '</div>'
    );
    $('#list_photos').html(tempHTML)
  $.getJSON(refreshURL, refreshOptions, displayPhotos);
#end refresh

initialize = ->
  $('#photo_photo_link').on('change', populate2)
  $('#refresh_button').on('click', refresh2)

$(document).ready initialize
$(document).on 'page:load', initialize