# README

This is the "Family Friday" code challenge as described here:

https://gist.github.com/sarahwiemero/0aa5ff2d24196c65880936bbe80f6c52

excerpt from that link:

```
On the last Friday of every month, Apartment List abandons the convenience of our usual catered lunch in favor of getting some fresh air. The more we grow, the harder it is to see people who aren't on our immediate teams, so we shuffle ourselves into random groups for a chance to talk to (or even meet for the first time) people we otherwise miss out on.
```

This repository has two basic solutions to the challenge.

The first is a self-contained script-cum-database: `lunch.rb`.  This is an executable ruby file that can be run on the command line to produce the desired random groupings.  Near the top of the script is a listing of names.  This is the "database" of people who are going out to lunch.

The above solution was motivated by the following:  Easy to implement, very minimal, and anyone with a Mac or who has Ruby installed could run and maintain this.  Unfortunately it breaks this requirement:

```
Usability:
Someone relatively non-technical should be able to operate your program, which means some kind of CLI or GUI. What it shouldn't be is typing code into a console or editing data by hand.
```

Hence solution 2:

This is a very simple, minimally scaffolded Rails app that basically takes the above solution and inlines it into the index.html.erb view.  So the CRUD functionality is provided by Rails, and every time a reload is performed the lunch groups are updated.

