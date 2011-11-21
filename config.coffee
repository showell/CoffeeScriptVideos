VIDEOS = [
  {
    id: "4qKi_VyYO9s"
    concepts: """
      <h2>Arithmetic</h2>
      <a href="http://repl.it" target="blank">repl.it</a>
      Read Evaluate Print Loop
      arithmetic
      """
    code: """
      555 + 237
      20 - 5
      8 * 7
      """
  }
  {
    id: "LgOza6NBqRI"
    concepts: """
      <h2>Variables</h2>
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
    concepts: """
      <h2>Debugging and Comments</h2>
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
    concepts: """
      <h2>Functions</h2>
      """
    code: """
      f = (x) -> 2*x + 1
      area = (b, h) -> 1/2 * b * h
      console.log area(2, 1)
      """
  }
  {
    id: "3vqowHSKCOQ"
    concepts: """
      <h2>Strings</h2>
      """
    code: """
      greeting = "goodbye"
      person = "fred"
      console.log greeting + ", " + person
      """
  }
  {
    id: "-GeIcQrd7HA"
    concepts: """
      <h2>Basic Review #1</h2>
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
]

embed = (video_id) ->
  """<iframe width="420" height="315" src="http://www.youtube.com/embed/#{video_id}?rel=0" frameborder="0" allowfullscreen></iframe>"""

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

headers = ["Video", "Concepts", "Sample Code"]

rows = []
for video in VIDEOS
  rows.push [
    embed video.id
    concepts video.concepts
    sample_code video.code
  ]
  
console.log table headers, rows