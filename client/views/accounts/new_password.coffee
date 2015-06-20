Template.AccountsNewPassword.events(
  'click #show_hide_password': (event, template) ->
    event.preventDefault()
    $password_input = template.$('#password')

    if $password_input.prop('type') is 'password'
      $password_input.prop 'type', 'text'
      $(event.target).removeClass('mdi-action-visibility').addClass('mdi-action-visibility-off')
    else
      $password_input.prop 'type', 'password'
      $(event.target).removeClass('mdi-action-visibility-off')
        .addClass('mdi-action-visibility')
  
  'submit form': (event, template) ->
    event.preventDefault()
    
    token = Session.get '_reset_password_token'
    password = template.$('#password').val()

    Accounts.resetPassword token, password, (error) ->
      if error 
        console.error error.reason
      else
        Session.set '_reset_password_token', null
        if password_done_callback 
          password_done_callback()
        Router.go '/course'
)
