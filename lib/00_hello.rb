def ask_first_name(first_name = '')
    #Initialize
    @first_name = first_name
    puts "Give me your first name :)"
    @first_name = gets.chomp
end

def say_hello
    puts "Hello #{@first_name}! Have a nice day."
end

ask_first_name
say_hello