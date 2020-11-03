@user = ""
@stairs_number = 10
@game_number = 0

def game_rules
    puts "RULES : \n
    Your goal is to reach the highest floor which is 1st one here.\n
    If you go under the 10th floor, you loose the game.\n
    When your dice is 5 or 6, you go upstairs.\n
    When it is 2, 3 or 4, you stay where you are.\n
    If you get 1, you go downstairs.\n
    Good luck! \n"
end

def pyramid
    diese_number = 1
    diese = '#'
    space_number = @stairs_number
    space = ' '
    i = 1
    while i <= @stairs_number
      puts space * space_number + diese * diese_number
      i += 1
      diese_number += 2
      space_number -= 1
    end
end

def dice_launcher
    @dice = (1..6).to_a.sample.to_i
end

def get_user_name
    puts "Enter your name to launch the game :)"
    @user = gets.chomp.to_s
end

def game_launcher
    puts "Press the \"Enter\" button to play again!!"
    gets.chomp.to_i
end

def game_loop
    dice_launcher
    puts "Your dice is #{@dice}"
    case  @dice
    when 5 , 6
        puts "You go upstairs :)  Go go go ..."
        puts '-' * 10
        @stairs_number -= 1
    when 2 , 3 , 4
        puts "You stay where you are :/"
        puts '-' * 10
    else
        puts "You go downstairs !!"
        puts '-' * 10
        @stairs_number += 1
    end
end

def say_floor_level
    puts "You are on the #{@stairs_number}th floor now."
end

def avarage_finish_time
    @game_number
end

def game
    until @stairs_number == 1 || @stairs_number >= 11
        puts '-' * 30
        game_launcher
        game_loop
        say_floor_level
        @game_number += 1
    end
    if @stairs_number == 1
        puts "Congratulation #{@user}! You did it!"
        puts '-' * 10
        puts "Youu did it in #{avarage_finish_time} games."
    else
        puts "Game over, you went under 10th floor!! See you again #{@user}."
        puts "#{avarage_finish_time} games."
    end
end

game_rules
get_user_name
game