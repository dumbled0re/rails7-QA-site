# each
numbers = [1, 2, 3, 4, 5]
numbers.each do |number|
    puts number
end

numbers.each {|number|
    puts number
}

# 上記を一行で書く
numbers.each{|number| puts number}

colors = ["red", "green", "bule"]
colors.each do |color|
    puts color
end

# for(原則使わない)
for number in numbers do
    puts number
end