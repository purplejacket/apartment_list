#!/usr/bin/env ruby

# Program to create random lunch groups

# INSTRUCTIONS:
# add, change, or remove names from the "people" block below if you need to
# run the Program
# it will give a random result each time

people = <<-PUT_NAMES_IN_THIS_BLOCK
Heather
Ellen
Melvina
Layne
Jannie
Arjun
Anna-Maija
Humberto
Neva
Conner
Gabrielle
Kaitlyn
Nicholaus
Belle
Sibyl
Vishwanathan
Yong
Jocelyn
Percival
Gabe
Brando
Cielo
PUT_NAMES_IN_THIS_BLOCK


# Do not modify the code below this line unless you know what you're doing

def rebalance groups
  last = groups.last
  if last.length % 4 == 1
    groups[0] << last.pop
    groups.pop
  elsif last.length % 4 == 2
    groups[0] << last.pop
    groups[1] << last.pop
    groups.pop
  end
  groups
end

def display groups
  groups.each_with_index {|group, i| puts "group#{i+1}: #{group.join(', ')}"}
end

names = people.split("\n").shuffle

if names.length == 0
  puts "No lunch groups yet as we have no people in the list"
elsif names.length <= 5
  puts "Here is your one lunch group:"
  groups = names.each_slice(5).to_a
  display groups
elsif names.length == 6
  puts "Here are two groups of three for your dining pleasure"
  groups = names.each_slice(3).to_a
  display groups
else
  groups = names.each_slice(4).to_a
  puts "Here are your lunch groups:"
  display rebalance(groups)
end
