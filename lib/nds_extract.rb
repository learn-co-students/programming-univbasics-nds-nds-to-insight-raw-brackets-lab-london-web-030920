$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require 'pp'
require 'pry' # - USE binding.pry to check your code!!!!! *****

def directors_totals(nds)
 
  totals_hash = {}
  
  i = 0 
  while i < nds.length do
  directors_name = nds[i][:name]

  totals_hash[directors_name] = 0 
  
  movies_index = 0 
  while movies_index < nds[i][:movies].length do 
   totals_hash[directors_name] += nds[i][:movies][movies_index][:worldwide_gross]
   
   movies_index+=1
    
  end
  
  i+=1

end

totals_hash
end






 # The Hash result be full of things like "Jean-Pierre Jeunet" => "222312123123"
 # result = {
#  }
  #
  # Use loops, variables and the accessing method, [], to loop through the NDS
  # and total up all the

  # Be sure to return the result at the end!