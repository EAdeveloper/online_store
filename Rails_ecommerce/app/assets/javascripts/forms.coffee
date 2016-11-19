
$(document).on "ajax:beforeSend", "#emails-form", ()->
	console.log "Se esta enviando el form"
	$("#email-info").html "Se está procesando tu petición"

$(document).on "ajax:success", "#emails-form", (e,data,estado,xhr)->
	$(this).slideUp()
	$("#email-info").html "You're already in the row of invitations, hurray! this is beta"

$(document).on "ajax:error", "#emails-form", (e,data,estado,xhr)->
	console.log data
	$("#email-info").html data.responseJSON.email[0]