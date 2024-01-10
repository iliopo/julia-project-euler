#This is a very easy task, we just need to loop to find all the values
function multiples_of_3_or_5(limit)
    sum = 0
    for i in 0:limit-1 
        if i % 3 == 0 || i % 5 == 0
            sum = sum + i
        end
    end
    sum
end

#runner code
println(multiples_of_3_or_5(1000))