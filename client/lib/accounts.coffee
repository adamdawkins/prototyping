@password_done_callback = null

Accounts.onEnrollmentLink (token, done) ->
  Session.set('_reset_password_token', token)
  password_done_callback = done
