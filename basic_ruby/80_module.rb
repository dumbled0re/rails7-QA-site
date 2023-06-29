# モジュールはインスタンスや継承ができない
module Driver
    def self.run
        puts "Run"
    end

    def self.stop
        puts "Stop"
    end
end

Driver.run
Driver.stop

module Chatting
    def chat
        "hello"
    end
end

# モジュールのメソッドをクラスに取り込む
class Dog
    include Chatting
end

dog = Dog.new
puts dog.chat