#Given that we want three digits factors we have to check from 100 to 999
#The solution itself isnt great, firstly the complexity is quadratic (which is by itself not very good), and also it isnt modular
#because the range is arbitrary, this in fact only checks for 3 digits factors

const RANGE = range(100, 999)

function is_palindrome(number)
    helper = string(number)
    helper == reverse(helper)
end

function all_palindrome_product()
    palindrome_products = []
    for i in RANGE
        for j in range(i, 999)
            product = i * j
            if is_palindrome(product)
                append!(palindrome_products, product)
            end
        end
    end
    palindrome_products
end

function find_largest_palindrome_product(palindrome_products)
    maximum(palindrome_products)
end


#Code runner
println(find_largest_palindrome_product(all_palindrome_product()))