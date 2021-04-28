cities_book = {
    "New York" => 8600000,
    "San Diego" => 1300000,
    "San Fransisco" => 810000,
    "Chicago" => 2700000,
    "Washington" => 710000,
    "Seattle" => 660000,
    "New Orlean" => 360000,
    "Philadelphia" => 1500000,
    "Denver" => 620000,
    "Los Angeles" => 3900000
}

def get_city_name(cities)
    puts "Which city population do you want to know?"
    cities.each {|cityname,population| puts cityname}
    print "Enter city name: "
    city_name = gets.chomp
    return city_name if cities.key?(city_name)
    return nil
end

def get_population(cities,cityname)
    return cities[cityname]
end


mainloop = true
while mainloop
    print "Do you want to know population of certain city? (Y/N): "
    answer = gets.chomp
    break if answer.downcase != 'y'
    city_name = get_city_name(cities_book)
    if city_name
        population = get_population(cities_book,city_name)
        puts "\nThe population of #{city_name} is #{population}\n\n"
    else
        puts "Invalid city name\n\n"
    end
end
