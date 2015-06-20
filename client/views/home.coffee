Template.home.helpers
  reset_password_token: ->
    Session.get '_reset_password_token'
