Meteor.startup( ->
  Meteor.users.remove({})
  if Meteor.users.find().count() is 0
    customers = JSON.parse(Assets.getText 'customers.json')
    for customer in customers

      user =
        email: customer['Buyer Email']
        profile:
          name: customer['Buyer Name']
        country: customer['Country']
        roles: ['customer', 'pre-order']

      console.log user

      user_id = Accounts.createUser user
      console.log user_id
      #Accounts.sendEnrollmentEmail user_id
      Meteor.users.update(
        _id: user_id
      ,
        $set: 'emails.0.verified': true
      )

      console.log Meteor.users.findOne(user_id)

      if user.roles.length > 0
        console.log "user.roles > 0"
        console.log "Roles.addUsersToRoles(#{user_id}, #{user.roles})"
        Roles.addUsersToRoles user_id, user.roles
  )
