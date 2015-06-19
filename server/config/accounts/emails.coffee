# Global settings
Accounts.emailTemplates.siteName = "Prototyping with Meteor"
Accounts.emailTemplates.from = "Adam Dawkins <adam@adamdawkins.co.uk>"

# enroll Account email
Accounts.emailTemplates.enrollAccount.subject = (user) ->
  if user.profile.name
    return "Welcome to Prototyping With Meteor, #{user.profile.name}!"
  else
    return "Welcome to Prototyping With Meteor!"

Accounts.emailTemplates.enrollAccount.text = (user, url) ->
  """
  Hi there!

  Thank you for pre-ordering the Prototyping with Meteor course!\n\n

  To activate your account, and start watching this weeks lessons, simple click
  the link below:\n\n

  #{url}

  Enjoy, and don't forget to leave your feedback!

  Adam

  P.S. Any questions, give me a shout at adam@adamdawkins.co.uk or @adamdawkins on Twitter
  """
