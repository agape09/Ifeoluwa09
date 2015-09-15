

comp = ['R', 'G','G', 'G','Y','Y']

user = ['R','Y', 'Y','Y','G','G']

comp_hash=comp.reduce(Hash.new(0)) do |memo,ele|

    memo[ele]+=1

   memo

end

user_hash=user.reduce(Hash.new(0)) do |memo,ele|

    memo[ele]+=1

  memo

end

p comp_hash

p user_hash

​

result =0

user_hashed.merge(comp_hash) do |key, oldval, newval| 

    

    if newval >= oldval

        result += oldval

    else

        result +=newval

    end

   

end

​

result

