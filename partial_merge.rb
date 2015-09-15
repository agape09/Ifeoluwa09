=begin
comp = ['R','G','G','G','Y','Y']

user = ['R','Y','Y','Y','G','G']

comp_hash=comp.reduce(Hash.new(0)) do |memo,ele|

    memo[ele]+=1

   memo

end

user_hash=user.reduce(Hash.new(0)) do |memo,ele|

    memo[ele]+=1

  memo

end

p user_hash

p comp_hash

result =0

user_hash.merge(comp_hash) do |key, oldval, newval| 

    

    if newval >= oldval

        result += oldval

    else

        result +=newval

    end
end

p result
=end

class Egg
    
color = ['G', 'Y', 'R', 'C']

def random_select(array, n)
  result = []
  n.times do 
    result << array[rand(array.length)]
  end
  result
end
result = Egg.new.random_select(color, 4)

user = gets.chomp


end
