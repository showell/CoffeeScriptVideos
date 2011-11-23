VIDEOS = [
  {
    id: "4qKi_VyYO9s"
    title: 'Arithmetic'
    concepts: """
      Resource: <a href="http://repl.it" target="blank">repl.it</a>
      <br>
      p
        CoffeeScript supports the four binary arithmetic operations that
        most of us learn in grade school:
      ul
        li | + (addition)
        li | - (subtraction)
        li | * (multiplication)
        li | / (division)
      p
        Operations can be combined using parentheses, such as "(3 +7) * 5".
      p
        The video lesson shows how to enter expressions using a Read/Evaluate/Print Loop (REPL).
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
      p
        A computer program can be a sequence of statements that execute in order.
      p
        CoffeeScript programs can use "console.log" to write values to the console.
      p
        Variables such as "year" can be used to hold values, which can be used in
        subsequent program statements.  You use the "=" operator to assign variables
        with values.
      """
    code: """
      year = 1998
      console.log year + 16
      area = (1/2) * b * h
      console.log area
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
      
      console.log car.color
    '''
  }
]

convert = require('./pipedent.coffee').convert

embed = (video_id) ->
  """
    (<a href="http://www.youtube.com/watch?v=#{video_id}" target="parent">video</a>)
  """
  # """<iframe width="420" height="315" src="http://www.youtube.com/embed/#{video_id}?rel=0" frameborder="0" allowfullscreen></iframe>"""

sample_code = (example) ->
  """
    <h5>Example code:</h5>
    <pre class='code'>#{example}</pre>
  """
  
concepts = (concepts) ->
  """
    <div class='concepts'>
      #{convert concepts}
    </div>
  """
  
side_by_side = (left, right) ->
  """
  <table class='sideBySide'>
    <tr valign='top'>
      <td>
        #{left}
      </td>
      <td>
        #{right}
      </td>
    </tr>
  </table>
  """

lesson = (video) ->
  html = ''
  html += """
    <h3>#{video.title}</h3>
    #{embed video.id}
    <div class='lesson'>
      #{side_by_side sample_code(video.code), concepts(video.concepts)}
    </div>
    <hr>
    """
  html

html = ''
html += "<link rel='stylesheet' href='lessons.css'>"


for video in VIDEOS
  html += lesson video

console.log html