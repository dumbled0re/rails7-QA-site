5.times do
    puts 'hello!'
end

5.times do |i|
    puts "#{i} hello!"
end

# doは{}でもok!
5.times { |i|
    puts "#{i} hello!"
}