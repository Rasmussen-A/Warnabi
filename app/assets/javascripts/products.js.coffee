$(document).ready ->
  # Define height for item div
  $('.item').height $(".item").width()
  # And width for cart and categories block
  $('.affix').width $('#sidebar').width()
