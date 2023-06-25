nakamura = {'name' => 'Nakamura', 'birthplace' => 'Nagoya'}
puts nakamura['birthplace']
nakamura['age'] = 20
puts nakamura
# 要素の削除
nakamura.delete('age')
puts nakamura

# シンボルを使用したハッシュ(こっちのほうが早いらしい)
sato = {name: 'Sato', birthplace: 'Tokyo'}
puts sato[:name]
puts sato[:birthplace]
sato[:age] = 20
puts sato
sato.delete(:age)
puts sato

# キーを確認
pp sato.keys
# 値の確認
pp sato.values

# 指定したキーが存在するのか
puts sato.has_key?(:name)
puts sato.has_key?(:address)
puts sato.size