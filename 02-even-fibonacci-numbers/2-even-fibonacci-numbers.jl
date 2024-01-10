#First solution - banal function (recursive) to find the Fibonacci numbers and only summing when needed
#Given that the Fibonacci series grows pretty fast, this is a completly fine implementation, in fact we need to loop only a few times to hit the limit
#=
function fibonacci_numbers(limit_four_million = 4000000)
    first_term = 1
    second_term = 2
    sum = 0
    while first_term <= limit_four_million
        if is_even(first_term)
            sum += first_term
        end 
        (first_term, second_term) = swap_two_numbers(first_term, second_term)
    end
    sum
end

#The next two function are only for readability of the code, there is no need for them in reality
function swap_two_numbers(number_one, number_two)
    helper = number_one
    number_one = number_two
    number_two = number_one + helper 
    (number_one, number_two)   
end

function is_even(number)
    number % 2 == 0
end
=#

#Do we need to loop at all? Using the Binet Function and n identity of the sum of fibonacci numbers: sum(F(n)) = F(n+2) + 1
const PHI1 = (1 + sqrt(5)) / 2
const PHI2 = (1 - sqrt(5)) / 2

function binet_function(number)
    (PHI1^number - PHI2^number) / sqrt(5)
end

function inverse_binet_function(number)
    floor(log(PHI1, number * sqrt(5) + 1 / 2))
end

function identity_sum(number)
    binet_function(number + 2) - 1
end

function calculate_sum(number)
    round(identity_sum(inverse_binet_function(number)) / 2)
end

#runner code
println(calculate_sum(4000000))
