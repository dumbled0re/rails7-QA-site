s = "Hello World!"
puts s
name = "ritsushi"
puts "I'm #{name}"

# 大文字に変換(もともとの変数は変わらない)
puts s.upcase
# 大文字に変換(もとの変数も変わる)
puts s.upcase!
puts s

# 文字列の連結(かっこは省略可能)
# s.concat(" I'm #{name}")
s.concat " I'm #{name}"
puts s