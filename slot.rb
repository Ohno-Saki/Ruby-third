  puts "------------"
  @coin = 100
  puts "残りコイン数100"
  @point = 0
  puts "ポイント0"
  
def slot
  puts "何コイン入れますか？"
  puts "0(10コイン)　1(30コイン)　2(50コイン)　3(やめとく)"
  short_line = "------------"
  puts short_line
  
  @player_choice = gets.to_i
  
  if @player_choice == 3
    puts "また挑戦してね"
    return false
  end
  
  coins = [10,30,50,0]
  consumed_coins = coins[@player_choice]
  
  puts "スロットを回します。Enterを３回押してください"
  line = "---------------"
  
  num1 = Array.new(3){rand 6..7}
　puts = gets
  puts line
  puts "|#{num1[0]}| | |"
  puts "|#{num1[1]}| | |"
  puts "|#{num1[2]}| | |"
  num2 = Array.new(3){rand 6..9}
  puts = gets
  puts line
  puts "|#{num1[0]}|#{num2[0]}| |"
  puts "|#{num1[1]}|#{num2[1]}| |"
  puts "|#{num1[2]}|#{num2[2]}| |"
  num3 = Array.new(3){rand 2..9}
  puts = gets
  puts line
  puts "|#{num1[0]}|#{num2[0]}|#{num3[0]}|"
  puts "|#{num1[1]}|#{num2[1]}|#{num3[1]}|"
  puts "|#{num1[2]}|#{num2[2]}|#{num3[2]}|"
  puts line

  number = num2[1]
  
  if (num1[1] == num2[1]) && (num2[1] == num3[1])   
    puts "真ん中に#{number}が揃いました！"
    earned_points = 500
    puts "500ポイント獲得！"
    earned_coins = 100
    puts "100コイン獲得！"
  else 
    puts "もう一度チャレンジ！"
    earned_points = 0
    earned_coins = 0
  end
 
  puts short_line
  @coin = @coin - consumed_coins + earned_coins
  puts "残りコイン数#{@coin}"
  @point += earned_points
  puts "ポイント#{@point}"
  
end


until @coin == 0 do
  slot
  if @player_choice == 3
    break
  end
end

if @coin == 0
  puts "コインがなくなりました。ゲームを終了します。"
end



