Template.homepage.rendered = ->
  $('.parallax').parallax()

Template.homepage.helpers
  sections: ->
    Sections.find().fetch()
