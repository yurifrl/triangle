
# Worklog.
A timeline of development considerations (there will be grammar errors)

- First thing i tought: that is to easy, so there migth be a trick there,
  or they expectations are super high, so a better do a great job
- Given the nature of the chalenge, i desided to create a lib/component
  that can be pluged in other projects, I belive all code should be like this,
  isolated, functional, whit no side efects
- The problem reminds me of a Jim Weirich Talk, where he did a roman numbers
  converter with ruby, and he explains a rather simple idea of TDD + refactoring
  that i find fitting for the job
- There is a few reasons why i chose elixir:
    1. Jim's examples is such a commom, that i saw it other time on a
       elixir workshop
    2. I found elixir pattern matching just wonderful for the job, i could use haskell
       but i could use the knowledge of the roman numbers example
    3. Elixir looks, cool. No. Seriously, look at it. It's functional, it's parallel
       it was built on top of erlang, it's inspired by ruby's syntax that's a very
       intuitive and easy to use
    4. Although i do not master it, i like it very much
    5. It's a Brazilian creation :D
    6. I want to master it so, noting better than coding on it, right?
- I use docker for everything, In a daily basis i use node, ruby, elixir
  somethimes i study algorithms in java, and tweak with go and haskell,
  And i don't have any of those instaled in my machine.
  For me that's amazing, i can just switch computers and simply clone the repo
  and it works, i have the same environment as my teammate and production,
  It's like having superpowers XD
- The new updated elixir image just donwloaded, so i will start the project
- I renamed the module to something short, Tc extends for Triangle Computation? maybe?
- I'm no good with names.
- Is not a good pratice to jumping writing code, but the completion requirements
  are well defined, so i don't believe it will be a problem, so i started writing tests
- The first test started with a list, and i looped the test values to the function
  but i desided not to get ahead of myself, and do step by step
- The first test if a very simple one, just to get a taste of the api
- Now i will google the Pythagorean Theorem because i do not remember it at all
- Funny thing that i preased the pattern matching so much and forget about using it
  for matching values, silly me
- So i felt hungry, then a whent to grab a bitte
- I'm was taking the day off, but when a came i came back i actualy spent the hole
  afternoon helping a collegue on a task, that slowed me down a bit, but when i back
  from college i will finish this
- I have few considerations:
- The hole thing is very simple, a compared with a few solutions after i felt that
  i was done, and mine was just as good, actualy i might have over engineared the
  hole thing
- I found out that there was few core elixir features that i was neglecting, so
  a huge portion of time was me catching up on those
- There is not much to talk about the solution, i felt quiet dump after i looked up
  the definitions of the triangle types
- There is no much  left to do, i want only to enhance the test cases, and deside
  if i want to pass a list or use the arity
- I should consider the two aproaches, list vs arity
- Arity (does it has a plural?) are more functional i suppose? would i use then
  just for the sake of using it? i was using them initialy but i was spending a
  excessive amount of time on the tests, trying to convert a list of three
  elements to the function parameters (forget arity), well in a way i was happy with,
  i didn't want to do foo(x[0], x[1], x[2]) because is not just ugly, it seems to
  error prone, and for the cases i was doing that would fail actualy, maybe i should
  recosider the way i'm doing the test i guess
- I realize i might be overtinking this
- Well since i'm doing it i should do my best, so lest not restraining ourselves
- Let me try to make a effort on discussing "design decisions"
- This arity (here it's him again) versus list discusion is not just a aesthetic discusion
- I rather like this way of coding, when you can handle the decions you take on,
  such small and concise steps, and you are able to test then on the fly, is much
  more clear what you are doing
- Start of working session 2:
- My git log says that my last commit was 11h ago, so i had, i few minutes to
  think about this
- I'm doing a more "advanced" research on basic Euclidean geometry, because apparently
  i can't retaing basic math knowledge (to be fair those things only show up in tests)
- I have a idea, let me try it
- Desided to split polygons in another module, because polygons is just triangles
  in a array
- There were few considerations when i was creating the polygon feature:
  " This is tricky, with a triangle is easy if two are equal then is isosceles
    But what when we trow more items?
    A kite is isoceles, but it has two equal sizes
    I will throw matches as they apear for now "

