users_database = [  {username: "admin",password: "admin"},
    {username: "user",password: "user"},
    {username: "root",password: "root"},
    {username: "bart",password: "12345678"},
    {username: "angela",password: "1234"}
]
login_counter = 0
while login_counter<=3
    print "\nEnter username: "
    username = gets.chomp
    print "Enter password: "
    password = gets.chomp
    user_found = nil   
    users_database.each do |user|
        if username == user[:username] && password == user[:password]
            user_found = user
            break
        end
    end
    if user_found
        puts "Welcome #{user_found[:username].capitalize}, nice to see you again!"
        break
    end
    login_counter += 1
    if login_counter == 3
        puts "Still invalid. You tried to many times. Program will end."
        break
    end
    print "\nInvalid credentials, wanna try again? 'y' for yes, other key to quit: "
    answer = gets.chomp
    break if answer !='y'
end