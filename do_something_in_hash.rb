movies = {
    :"Gone with the Wind" => 3.5,
    :"A Pair of Shoes" => 3.7
    
}

puts "type choice"
choice = gets.chomp

case choice
when "add" 
    puts "Type a movie:"
    title = gets.chomp
    puts "How would you rate this movie?"
    rating = gets.chomp
    if movies[title.to_sym] == nil
        movies[title.to_sym] = rating.to_i
    end
    puts "Added"
when "update"
    puts "Type a movie"
    title = gets.chomp
    if[title.to_sym] == nil
        puts "Erroe! You must type a movie that is in the list!"
    else
        puts "How would you rate this movie now?"
        rating = gets.chomp
        movies[title.to_sym] = rating.to_i
    end
    #puts "Updated!"
when "display" 
    movies.each do |movie, rating|
        puts "#{movie}: #{rating}"
    end
when "delete" 
    puts "Which movie would you like to remove?"
    title = gets.chomp
    if movies[title.to_sym] == nil
        puts "Error! The movie does not exist in the list!"
    else
        movies.delete(title.to_sym)
    end
        
else 
    puts "Error! You can only choose to add, update, display or delete!"
end