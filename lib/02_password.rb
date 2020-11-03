require 'io/console'

@data = []
@string = ""

def push_data
    @data.push(@string)
end

def check_data
    puts @data.index(@string)
end

def signup
    puts "Set your password please!"
    @string = IO::console.getpass
    push_data
end

def login
    puts "Enter your password!"
    @string = IO::console.getpass
end

def welcome_screen
    until @data.include?(@string)
        puts "Wrong password!!"
        @string = IO::console.getpass
    end
    puts "Welcome to your home screen. Your password is #{@string}"
end

signup
login
welcome_screen