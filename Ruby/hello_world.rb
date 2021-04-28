
#some usefull methods
def learning_new_things
    def messing_with_strings
        print "Line without"
        print " newline character"
        puts ""
        puts "Line with newline character"
        p "Line with return value? not sure"
        
        #Decalring variables
        name = "Bart"
        surname = "Baker"

        #string concatenation
        full_name = name + surname
        full_name = "#{name} #{surname}"

        # Doesnt work with single quotation
        intruducing = "My first name is #{name} and my last name is #{surname}"
        # Length including spaces
        puts "a b c d".length

        #reverse string
        puts "kobyłamamałybok lol".reverse

        #return true when string is empty, like here; otherwise false
        puts "".empty?

        # return false, it's not null
        puts "".nil?

        #return true
        puts nil.nil?

        # replacing some values. It doesn't change the string, just output
        sentence = "Wake up samurai"
        puts sentence.sub("samurai","honey")    #Wake up honey
        puts sentence                           #Wake up samurai

        # this works only for last one 'siema', it's case sensitive
        puts "Siema mordeczko Siema mordeczko Siema mordeczko siema mordeczko".sub("siema","elo")
        
        # this will work only for first occurance of "Siema"
        puts "Siema mordeczko Siema mordeczko Siema mordeczko siema mordeczko".sub("Siema","Elo")

        # this works for all occurances of "Siema", gsub change all occurances in string
        puts "Siema mordeczko Siema mordeczko Siema mordeczko siema mordeczko".gsub("Siema","Elo")

        #gsub and sub, replace only output, not string itself

        #shows all methods for string
        print "whatever".methods
        print "".methods

    end    
    
    def casting
        #Casting
        Float("foo") # this will rise error
        Float("123") # output 123.0
        "123".to_f # output 123.0
        "bar".to_f # output 0.0
        
        123.5.to_s # output "123.5"
        String(123.5) # output "123.5"
        sprintf("%s", 123.5) #=> "123.5"
        "%s" % 123.5 #=> "123.5"
        "%d" % 123.5 #=> "123"
        "%.2f" % 123.5 #=> "123.50"

    end
    
    def assignment_operators
        x, y = 3, 9
        x, y = y, x
        puts "x is #{x}, y is #{y}"
        # This will output:
        # x is 9, y is 3

    end

    def more_methods
        #cast to Integer to String and print class
        puts 10.to_s.class

        #check type and print it
        puts name.class
        puts 10.class
        
        #shows all methods for Integer
        print 10.methods

        # my_name is pointing to place in memory where the "Bart" name is.
        my_name = "Bart"
        
        # my_new_name IS POINTING TO "BART", not to my_name. That means, you can change my_name,
        # and my_new_name will still containts string "Bart"
        my_new_name = my_name
        puts my_new_name
        my_name = "Johny"
        puts my_new_name
    end
    
    def case_equality_operator
        # Bad
        Integer === 42
        (1..5) === 3
        /ell/ === 'Hello'
        # Good, uses synonym method
        42.is_a?(Integer)
        (1..5).include?(3)
        /ell/ =~ 'Hello'
    end

    def floats_and_integers
        1/2 #=> 0
        # Since we are dividing two integers, the result is an integer. To solve this problem, we need to cast at least one of those to Float:
        1.0 / 2 #=> 0.5
        1.to_f / 2 #=> 0.5
        1 / Float(2) #=> 0.5
        # Alternatively, fdiv may be used to return the floating point result of division without explicitly casting either
        1.fdiv 2 # => 0.5
    end

    def random_and_simple_loop
        3.times {puts rand}
        3.times {puts rand(10)}
        3.times {puts rand(100)}
    end

    def user_input
        puts "What is your age?"
        age = gets.chomp.to_i
        puts "Nice, so u born in #{2021-age}!"
    end

    def equality_operator
        10.eql?(10)     # true
        10.eql?(10.0)   # false
                        # eql? check exact value. Int is not equel to float
        10==10          # true
        10==10.0        # true
    end

    def basic_if_elsif
        var = "av"

        if var.is_a?(Integer)
            puts "It's Integer :)"
        elsif var.is_a?(Float)
            puts "It's FLoat :c"
        elsif var == nil
            puts "It's a nil!!! :O"
        elsif var.is_a?(String)
            puts "Really? Just string? cmon"
        else puts "Wow, something creative" 
        end
    end

    def basic_arrays
        tab = [1,2,3,4,5,6,"7",nil,"9",[1,2,3]]
        puts tab
        puts tab.first
        puts tab.last
    end

    def more_about_arrays
        arr = (1..10).to_a
        p arr

        #this method DOESN'T change original array, array will still be 1..10
        p arr.shuffle
        p arr

        #this method change original array, and now array will be shuffled
        p arr.shuffle!
        p arr
        #the same with arr.reverse and arr.reverse!


        abc_arr = ("a".."z").to_a
        
        arr << 11           # add element at the end
        arr.append(12)      # add element at the end
        

        arr.unshift("Foo")  # add element at the beginning
        
        arr.uniqe           # return array without repeats

        arr.uniqe!          # mutate arrary, and it will become uniqe now

        arr.empty?          # return false if not empty

        arr.include?(12)    # return true if array include that element

        arr.push("new item")# will add "new item" at the end

        last_item = arr.pop # MUTEATE, remove last item and return it

        arr.join # DONT mutate, return string containing all items

        arr.join("-")
        arr.join(", ")
        string_from_array = arr.join(", ")
        array_from_string = string_from_array.split(", ")

        new_arr = %w(o ja cie krece ale fajne lololo 1 2 3 112233)
    end
    
    def iterators
        my_arr = %w(my new array with everything 1 2 3 11 22 33 111222333)
        for item in my_arr
            p item
        end
        for item in my_arr
            print item + " "
        end


        my_arr.each do |itemik|
            print itemik + " "
        end

        my_arr.each {|item| print item + " "}
        my_arr.each {|item| print item.capitalize + " "}


        random_numbers = (1..100).to_a
        random_numbers.select {|number| number.odd?}
        random_numbers.select {|number| !number.odd?}
        random_numbers.select {|number| not number.odd?}
    end

    def dictionaries_or_hashes
        person = {  name: "Bart", 
            age: 15,
            place: "London",
            job: true}

        person.each {|a| puts "Property: #{a}"}
        # Property: [:name, "Bart"]
        # Property: [:age, 15]
        # Property: [:place, "London"]
        # Property: [:job, true]
        person.each {|key,value| puts "#{key} = #{value}"}
        # name = Bart
        # age = 15
        # place = London
        # job = true

        person[:place] = "California" #changing values
        person[:dream_trip] = "Siberia" #adding new values
        p person # {:name=>"Bart", :age=>15, :place=>"California", :job=>true, :dream_trip=>"Siberia"}

        p person.select {|k,v| v.is_a?(String)} # {:name=>"Bart", :place=>"California", :dream_trip=>"Siberia"}

        person.each {|key,value| p "Key: #{key}; value: #{value}" if value.is_a?(String)}
        # "Key: name; value: Bart"
        # "Key: place; value: California"
        # "Key: dream_trip; value: Siberia"

        person.each {|key,value| person.delete(key) if !value.is_a?(String)}
        p person # {:name=>"Bart", :place=>"California", :dream_trip=>"Siberia"}
    end
    
end
