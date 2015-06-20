Meteor.startup( ->
  if Meteor.users.find().count() is 0
    customers = JSON.parse(Assets.getText 'customers.json')
    for customer in customers

      user =
        email: customer['Buyer Email']
        profile:
          name: customer['Buyer Name']
        country: customer['Country']
        roles: ['customer', 'pre-order']


      user_id = Accounts.createUser user
      Accounts.sendEnrollmentEmail user_id


      if user.roles.length > 0
        Roles.addUsersToRoles user_id, user.roles
  )
