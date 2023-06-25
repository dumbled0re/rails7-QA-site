# a = [1, 2, 3, "aa", [1, 2, 3]]
# puts a[0]
# puts a[1]
# puts a.include?('aa')
# puts a.include?('b')
# puts a.reverse
# puts a.reverse!
# puts a
# # 0~25が入った配列を作成
# puts (0..25).to_a
z = (0..10).to_a
# 要素の追加
z << 20
puts z
# 要素の追加
z.push(30)
puts z
# 最後の要素を削除
z.pop
# 最初の要素を削除
z.shift
puts z
z << 6
# 重複を削除
z.uniq
# 破壊的メソッド
# z.uniq!

s = ["my", "name", "is", "nakamura"]
puts s.join
puts s.join(" ")
puts s.join("_")
# 降順
puts s.sort
# 昇順
puts s.sort.reverse
# 破壊的メソッド
puts s.sort!.reverse!
puts s.size