# ifのfalse版
# unlessでelseを使うのはやめよう(使用する場合はunlessだけ完結するようにする)

# n = 0
# # zero?で値が0なのかを判定する
# if !n.zero?
#     puts 'Not zero'
# end

n = 0
unless n.zero?
    puts "Not zero"
else
    puts "This is zero"
end