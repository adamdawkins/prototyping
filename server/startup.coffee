Meteor.startup ->
  Sections.remove({})
  if Sections.find().count() is 0
    intro_section = 
      title: "Introduction: Why?"
      description: "Prototyping is a key skill in development and business; and Meteor.js is perfect for it."
      topics: [
        text:"Why Prototype?"
      ,
        text:"Minimum Viable Product"
      ,
        text:"The need for speed"
      ,
        text:"Why Meteor.js"
      ]

    app1_section = 
      title: "App 1: A Blog"
      description: "We'll use a simple blog application to understand how Meteor works"
      topics: [
        text:"Meteor basic concepts"
      ,
        text:"Collections"
      ,
        text:"Login"
      ,
        text:"Your first app"
      ]

    app2_section = 
      title: "App 2: Chat Room"
      description: "Hi, ASL? What happens when more than one person logs in at the same time?"
      topics: [
        text:"Multiple users"
      ,
        text:"Session Variables"
      ,
        text:"Yahoo! Chat nostalgia"
      ]

    app3_section = 
      title: "App 3: Fantasy Auction"
      description: "Let's prototype the core feature of a fantasy football auction."
      topics: [
        text:"Sketching it out"
      ,
        text:"Isolating the core business logic"
      ,
        text:"Build on the Chat Room"
      ]

    app4_section =
      title: "App 4: Mobile"
      description: "We're not here yet, so we can decide our topic nearer the time. We'll need to cover:"
      topics: [
        text:"Differences when building for mobile"
      ,
        text:"Mobile and desktop?"
      ,
        text:"Cordova"
      ,
        text:"App Store logistics (for prototyping)"
      ]

    app5_section = 
      title: "App 5: Server side"
      description: "Once you're comfortable, Meteor.js can give you a really quick way to get a server up on the web to play with an API for some other project"
      topics: [
        text:"Introduction to the server side"
      ,
        text:"Using APIs"
      ]

    app6_section = 
      title: "App 6: Your turn"
      description: "Let's take what we've learnt about Meteor and Prototyping, and put it the test in a solo showcase project. I'll be about to support."
      topics: [
        text:"Put it into practice!"
      ]

    launch_section =
      title: "Launch"
      description: "Getting from prototype to the real thing."
      topics: [
        text:"Publications and Subscriptions"
      ,
        text:"The `insecure` package"
      ,
        text:"Further resources to take you on"
      ]


    sections = [
      intro_section
      app1_section
      app2_section
      app3_section
      app4_section
      app5_section
      app6_section
      launch_section
    ]

    for section in sections
      Sections.insert section

