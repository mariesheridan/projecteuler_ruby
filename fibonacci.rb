def Fibonacci limit
    sum = 0
    prevNum = 0
    nextNum = 1
    fibonacci = 0
    while fibonacci < limit
        if ((fibonacci % 2) == 0)
            sum = sum + fibonacci
        end
        fibonacci = prevNum + nextNum
        prevNum = nextNum
        nextNum = fibonacci
    end
    sum
end

puts '=== Running Fibonacci ==='
puts 'Enter limit: '
input = gets.chomp.to_i
sum = Fibonacci input
puts 'Sum = ' + sum.to_s