class User
    def initialize(name)
        @name = name
    end

    def hello
        puts "Hello! I am #{@name}."
    end
end

class AdminUser < User
    def admin_hello
        puts "Hello! I am #{@name} from AdminUser"
    end

    # オーバーライド
    def hello
        super
        puts "Admin!"
    end
end

# nakamura = User.new("Nakamura")
# nakamura.hello

sato = AdminUser.new("Sato")
sato.hello
sato.admin_hello