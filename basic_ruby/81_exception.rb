puts "--- Please enter an integer"
i = gets.to_i

begin
    puts 10 / i
    puts "begin's end"
# 例外が発生した場合の処理(すべてをキャッチする)
rescue => ex
#指定のエラーをキャッチする
# rescue SomeSpecialError -> ex
    puts "Error"
    puts ex.message
    puts ex.class
# 最後に実行する処理(pythonでいうfinish)
ensure
    puts "end"
end


# 独自のエラーを作成する
class NoMoneyError < StandardError; end
raise NoMoneyError, "No money"

# runtime error
raise "Exception: raise"