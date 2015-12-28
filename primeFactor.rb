def PrimeFactor limit
    factor1 = 1
    factor2 = limit
    iter = 2
    largestPrime = limit
    while (iter < (limit/2)) && (factor1 < factor2)
        if ((limit % iter) == 0)
            factor1 = iter
            factor2 = limit/iter
#            puts 'factor1 = ' + factor1.to_s
#            puts 'factor2 = ' + factor2.to_s
            if isPrime? factor2
                largestPrime = factor2
                break
            elsif isPrime? factor1
                largestPrime = factor1
            end
        end
        iter = iter + 1
    end
    largestPrime
end

def isPrime? number
    answer = true
    if ((number % 2) == 0)
        answer = false
    end
    factors = []
    iter = 2
    if answer
        while iter <= (number/2)
            if ((number % iter) == 0)
                answer = false
                break
            end
            iter = iter + 1
        end
    end
#    puts 'isPrime? ' + number.to_s + ' = ' + answer.to_s
    answer
end

puts '=== Running PrimeFactor ==='
puts 'Enter limit: '
input = gets.chomp.to_i
largestPrimeFactor = PrimeFactor input
puts 'Largest prime factor = ' + largestPrimeFactor.to_s