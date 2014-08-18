print "input something here"

user_input = gets.chomp

user_input.downcase!

user_input.gsub!(/s/, "th")
    