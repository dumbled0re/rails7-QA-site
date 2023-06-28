class Car

    # 一行でgetterとsetterを定義
    # attr_accessor :name
    # getter
    attr_reader :name
    # setter
    attr_writer :name

    def initialize(name)
        puts "initialize"
        @name = name
    end

    # privateで外部から呼べない(クラス内からしか呼べない)
    private
        def hello
            puts "Hello! I am #{@name}."
        end

    # attr_accessor :nameを書けば下記のようなaccessorメソッドは必要ない
    # # accessorメソッド(pythonでいうところのgetter)
    # def name
    #     @name
    # end

    # # accessorメソッド(pythonでいうところのsetter)
    # def name=(value)
    #     @name = value
    # end
end

# インスタンス作成
car = Car.new('Kitt')
car.hello
# 外部からは@nameは参照できない(getterを作成する必要がある)
# puts car.@name
# getterで呼び出す
puts car.name
car.name = "Nakamura"
puts car.name