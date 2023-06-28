# デフォルト引数
def name(full = true, with_age = true)
    n = "ritsushi"
    n << " #{27}" if with_age
    n = "Mr. #{n}" if full
    puts n
end

# キーワード引数
name(full: true, with_age: false)