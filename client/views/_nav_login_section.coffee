Template._nav_login_section.helpers
  'salutation': ->
    if Meteor.user().profile.name
      Meteor.user().profile.name
    else
      Meteor.user().emails[0].address

Template._nav_login_section.events
  'click [data-action="logout"]': (event) ->
    Meteor.logout()
