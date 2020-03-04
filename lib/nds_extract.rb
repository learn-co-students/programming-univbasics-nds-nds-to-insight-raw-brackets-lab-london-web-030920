$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def directors_totals(nds)

# counter = 0
result = { }


  # while directors_totals[0][:movies].count > counter do
  #  result << directors_totals[0][:movies][counter][worldwide_gross]


       director_index = 0

       while director_index < nds.length do
         movie_index = 0
      director_name = nds[director_index][:name]
          result[director_name] = 0
         while movie_index < nds[director_index][:movies].length do
          result[director_name] += nds[director_index][:movies][movie_index][:worldwide_gross]
           movie_index += 1
         end
          director_index += 1

       end
 result

 end

#pp(nds)

# Remember, it's always OK to pretty print what you get *in* to make sure
# that you know what you're starting with!
#
#
# The Hash result be full of things like "Jean-Pierre Jeunet" => "222312123123"
#
#
# Use loops, variables and the accessing method, [], to loop through the NDS
# and total up all the
# ...
# ...
# ...
#
#
# Be sure to return the result at the end!
