#Very naive solution but it seems fine enough
function largest_prime_factor(number)
    factor = 2
    while (factor * factor <= number)
        while number % factor == 0 && number != factor
            number = number / factor
        end
        factor = factor + 1
    end
    number
end

#Code runner
println(largest_prime_factor(600851475143))
