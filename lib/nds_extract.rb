$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require 'pry'
def directors_totals(nds)
  directors = {}
  row_index = 0 
  while row_index < nds.length do 
    column_index = 0 
    total = 0
    while column_index < nds[row_index][:movies].length do 
        total += nds[row_index][:movies][column_index][:worldwide_gross]
      column_index +=1 
    end 
    a = nds[row_index][:name]
        directors[a] = total
    row_index += 1 
  end 
  return directors
end
