def MultiplesOf3and5 limit
    sum = 0
    iter = 1
    while iter < limit
        if (((iter % 3) == 0) || ((iter % 5) == 0))
            sum = sum + iter
        end
        iter = iter + 1
    end
    sum
end

puts 'Enter limit: '
input = gets.chomp.to_i
sum = MultiplesOf3and5 input
puts 'Sum = ' + sum.to_s