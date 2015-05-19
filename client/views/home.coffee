Template.home.rendered = ->
  $('.parallax').parallax()

Template.home.helpers
  sections: ->
    Sections.find().fetch()
