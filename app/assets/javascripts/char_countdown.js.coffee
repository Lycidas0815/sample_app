
updateCountdown = ->
  text = $('#micropost_content').val()
  text = text.replace(/\s/g, '');
  remaining = 140 - text.length
  $(".countdown").text remaining + ' characters remaining'
  if remaining < 0
    $(".countdown").addClass 'alert alert-error'
    $("input.btn.btn-large.btn-primary").attr("disabled", "true")
  else
    $(".countdown").removeClass 'alert alert-error'
    $("input.btn.btn-large.btn-primary").removeAttr('disabled')

$(document).ready ->
  $('#new_micropost').append '<span class="countdown">140 characters remaining</span>'
  $("#micropost_content").focus updateCountdown
  $("#micropost_content").change updateCountdown
  $("#micropost_content").keyup updateCountdown
  $("#micropost_content").keydown updateCountdown
  $("#micropost_content").keypress updateCountdown  