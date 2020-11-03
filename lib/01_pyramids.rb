puts "Welcome to my super pyramid! How many stairs do you want? (choose an odd number)"
@stairs_number = gets.chomp.to_i
@diese_number = 1
@diese = '#'
@space_number = @stairs_number
@space = ' '

def full_pyramid
  i = 1
  while i <= @stairs_number / 2 + 1
    puts @space * @space_number + @diese * @diese_number
    i += 1
    @diese_number += 2
    @space_number -= 1
  end
end

full_pyramid

def wtf_pyramid
  i = 1
  while i <= @stairs_number / 2
    puts @space * (@space_number + 2) + @diese * (@diese_number - 4)
    i += 1
    @diese_number -= 2
    @space_number += 1
  end
end

wtf_pyramid