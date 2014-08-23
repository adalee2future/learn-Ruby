class Computer
    def initialize(username, password)
        @username = username
        @password = password
        @files = Hash.new
        @@users[username] = password
    end
    
    def create(filename)
        time = Time.now
        @files[filename] = time
        puts "A new file was created, #{username}: #{time}"
    end
    
    def self.get_users
        return @@users
    end
    
    def get_users
        return @@users
    end
    
    @@users = Hash.new    
end

my_computer = Computer.new("Ada", "AdaLee")

johns_computer = Computer.new("John", 123)

(Computer.get_users).each_key {|k| puts k}