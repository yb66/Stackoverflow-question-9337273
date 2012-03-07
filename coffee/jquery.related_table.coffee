jQuery ($) ->
  
  $.ajaxSetup
    data:
      c: 3,
      d: 4
    
      
  $("#form1").submit ->
    console.log( "ser: #{$(@).serialize()}")
    $.ajax
      url: "/"
      data: $(@).serialize()
      type: "POST"
      success: (res, status, xhr) =>
        console.log "res: #{res}"
      error: (xhr,status, err) =>
        console.log "failed with error: #{err}"
      complete: (xhr, status) =>
        console.log("finished with status: #{status}")
    false # prevent form submission via html