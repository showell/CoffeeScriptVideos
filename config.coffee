VIDEOS = [
  {
    id: "4qKi_VyYO9s"
    title: 'Arithmetic'
    concepts: """
      <a href="http://repl.it" target="blank">repl.it</a>
      Read Evaluate Print Loop
      arithmetic
      """
    code: """
      555 + 237
      20 - 5
      8 * 7
      14 / 2
      (3 + 7) * 5
      """
  }
  {
    id: "LgOza6NBqRI"
    title: 'Variables'
    concepts: """
      2-3 line programs
      """
    code: """
      year = 1998
      console.log year + 16
      area = (1/2) * b * h
      """
  }
  {
    id: "mOfB0oEZ-xE"
    title: 'Debugging and Comments'
    concepts: """
      """
    code: """
      # This program calculates tax.
      amount = 20
      tax_rate = 0.08
      tax = tax_rate * amount
      console.log tax
      """
  }
  {
    id: "sAJzwvuXDoA"
    title: 'Functions'
    concepts: """
      """
    code: """
      f = (x) -> 2*x + 1
      area = (b, h) -> 1/2 * b * h
      console.log area(2, 1)
      """
  }
  {
    id: "3vqowHSKCOQ"
    title: 'Strings'
    concepts: """
      """
    code: """
      greeting = "goodbye"
      person = "fred"
      console.log greeting + ", " + person
      """
  }
  {
    id: "-GeIcQrd7HA"
    title: 'Basic Review #1'
    concepts: """
      """
    code: """
      # Review of stuff we're done
      
      # Functions
      area = (b, h) -> (b * h) / 2
      
      # Number data types
      base = 5
      height = 12
      
      # console.log and strings
      console.log "the area is..."
      console.log area(base, height)
      """
  }
  {
    id: "wyfQyFod7Vc"
    title: 'Boolean Expressions'
    concepts: """
      """
    code: """
      true
      false
      x <= 6
      x < 6
      x > 6
      x >= 6
      """
  }
  {
    id: "mjHiy-2wB4k"
    title: 'While Loops'
    concepts: """
      """
    code: """
      i = 1
      while i <= 10
        console.log i*i
        i = i + 1
      """
  }
  {
    id: "if_0JwIU28E"
    title: 'Multi-line Functions'
    concepts: """
      """
    code: """
      square = (n) ->
        console.log "--- Entering"
        console.log n
        return n*n
      
      console.log square(5)
    """
  }
  {
    id: "xv2q5eFQSEk"
    title: 'String Interpolation'
    concepts: """
      """
    code: '''
      w = 10
      l = 8
      ppsqft = 7.50
      console.log "Cost is #{ w * l * ppsqft}"
      '''
  }
  {
    id: "sNNXE_6B3Rw"
    title: 'Arrays and Loops'
    concepts: """
      """
    code: '''
      people = ["alice", "bob", "cal"]
      for person in people
        console.log "hi #{person}
    '''
  }
  {
    id: "vw4MftXsOrM"
    title: '+= and -='
    concepts: """
      """
    code: '''
      balance = 100
      balance += 20
      balance -= 15
      console.log balance
      '''
  }
  {
    id: "TlERmDaEjJo"
    title: 'Objects'
    concepts: """
      """
    code: '''
      car =
        color: "metallic blue"
        year: 2010
        make: "Jetta"
        mileage: 14357
    '''
  }
]

embed = (video_id) ->
  """
    (<a href="http://www.youtube.com/watch?v=#{video_id}" target="parent">video</a>)
  """
  # """<iframe width="420" height="315" src="http://www.youtube.com/embed/#{video_id}?rel=0" frameborder="0" allowfullscreen></iframe>"""

sample_code = (example) ->
  "<pre>#{example}</pre>"
  
concepts = (concepts) ->
  "<pre>#{concepts}</pre>"

table = (headers, rows) ->
  html = "<table border=1 cellpadding=5>"
  html += "<tr>"
  for header in headers
    html += "<th>#{header}</th>"
  html += "</tr>"
  for row in rows
    html += "<tr valign='top'>"
    for cell in row
      html += "<td>#{cell}</td>"
    html += "</tr>"
  html += "</table>"

headers = ["Video", "Sample Code", "Concepts"]

rows = []
for video in VIDEOS
  rows.push [
    "<h4>#{video.title}</h4>" + embed(video.id)
    sample_code video.code
    concepts video.concepts
  ]
  
console.log table headers, rows