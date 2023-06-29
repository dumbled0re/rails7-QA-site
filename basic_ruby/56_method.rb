def hello_world
    puts "Hello World"
end

hello_world

def add(x, y)
    # 返り値は最後に処理を行ったものが明示的に返る
    x + y
end

puts add(10, 1)