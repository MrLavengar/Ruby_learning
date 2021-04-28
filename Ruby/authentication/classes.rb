require 'bcrypt'
class User
    attr_accessor :first_name, :last_name, :address, :password, :login
    @first_name
    @last_name
    @email
    @password
    @login
    @@login_list = []
    def initialize(firstname,lastname,email,login,password)
        @first_name = firstname
        @last_name = lastname
        @email = email 
        @password = BCrypt::Password.create(password)
        @login = login
        @@login_list << login
    end

    def self.get_login_list
        @@login_list
    end


    def to_s
        return @login
    end
end

users = []
file = File.open("users.txt")
file.each do |line|
    arr = line.strip.split(",")
    first_name = arr[0]
    last_name = arr[1]
    email = arr[2]
    login = arr[3]
    password = arr[4]
    users << User.new(first_name,last_name,email,login,password)
end
file.close


# user1 = User.new("John","Smith","Jsmith@gmail.com","Jsmith","josm123")
# user2 = User.new("Derek","Fisher","FishDer@gmail.com","Fisrek","fish123der")
# user3 = User.new("Angela","Merkel","Deutchland@gmail.com","German","uberalles")
# user4 = User.new("Donald","Trump","DonaldDuck@gmail.com","DDuck","goofey")
# user5 = User.new("Winnie","Pooh","ilovehoney@gmail.com","WinnieThePooh","hoooneey")

# users = [user1,user2,user3,user4,user5]

def log_in
    print "Enter login: "
    login = gets.chomp
    print "Enter password: "
    passwd = gets.chomp
end


users.each {|user| puts user.password == "josm123"}

