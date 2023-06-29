class Car
    # クラス変数は@@が2個
    @@count = 0

    def initialize(name)
        @name = name
        @@count += 1
    end

    def hello
        puts "Hello! I am #{@name}. #{@@count} instance(s)."
    end

    # クラスメソッド(selfが必要)
    def self.info
        puts "#{@@count} instance(s)."
    end
end

# インスタンス作成
Kitt = Car.new('Kitt')
# クラスメソッドはインスタンスを生成しなくても呼べる
Car.info
# Kitt.hello

karr = Car.new("Karr")
Car.info
# karr.hello

nakamura = Car.new("Nakamura")
Car.info
# nakamura.hello