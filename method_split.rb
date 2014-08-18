puts "type something"
text = gets.chomp
puts "type separator for the above you have typed"
redact = gets.chomp

words = text.split(redact)
