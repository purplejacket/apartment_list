#!/usr/bin/env ruby

# Program to create random lunch groups

# INSTRUCTIONS:
# add names or remove names from the "people" block below
# change the group size if you like
# run the Program
# it will give a random result each time

size = 5

people = <<-PUT_NAMES_IN_THIS_BLOCK
Heather
Ellen
Melvina
Layne
Jannie
Arjun
Ima
Verdie
Bria
Princess
Dock
Breanne
Brian
Deontae
Manuel
Lessie
Jada
Sheridan
Herbert
Christian
Lula
Aurelio
Kyle
Destiny
Elna
Benjamin
Fiona
Mathias
Tyrell
Sheldon
Enrico
Darrel
Jordi
Carlo
Anais
Ronny
Bertrand
Gunner
Emiliano
Jarred
Karine
Evalyn
Haylee
Hannah
Humberto
Neva
Conner
Gabrielle
Kaitlyn
Nicholaus
Belle
Sibyl
Leone
Amber
Jocelyn
Percival
Izabella
Maximus
Ross
Gabe
Brando
Cielo
Christiana M.
PUT_NAMES_IN_THIS_BLOCK


# Do not modify the code below this line unless you know what you're doing
names = people.split("\n").to_a.shuffle
grouping = names.each_slice(size).to_a
alternate_grouping = nil
if names.length % size != 0
  for alternate_size in [size - 1, size + 1, size +2] do
    if names.length % alternate_size == 0
      alternate_grouping = names.each_slice(alternate_size).to_a
    end
  end
end
display_them = Proc.new {|group, i| puts "group#{i+1}: #{group.join(', ')}"}
puts "Lunch groups with #{size} people each"
grouping.each_with_index &display_them
if alternate_grouping
  puts
  puts "Here are alternate same-size groups"
  alternate_grouping.each_with_index &display_them
end
