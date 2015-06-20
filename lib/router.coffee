Router.configure(
  layoutTemplate: "DefaultLayout"
)

Router.route '/',
  name: 'home'

Router.route '/login',
  name: 'login'
