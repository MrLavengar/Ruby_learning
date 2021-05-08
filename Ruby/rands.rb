n1 = n2 = n3 = n4 = n5 = n6 = 0


total_amount = 1000

total_amount.times {
    number = rand(6)+1
    case number
    when 1
        n1 += 1
    when 2
        n2 += 1
    when 3
        n3 += 1
    when 4
        n4 += 1
    when 5
        n5 += 1
    when 6
        n6 += 1
    end
}
arr = [n1,n2,n3,n4,n5,n6]
arr.each_with_index {|number,index| puts "Number of #{index+1}'s: #{(number.fdiv total_amount/100.0).round(2)}%"}
min_percentage = (arr.min.fdiv total_amount/100.0).round(2)
max_percentage = (arr.max.fdiv total_amount/100.0).round(2)
diff = (max_percentage - min_percentage).round(2)
puts "\nMinimum percentege number #{min_percentage}%"
puts "Maximum percentege number #{max_percentage}%"
puts "Difference: #{diff}%"
