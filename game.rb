def janken
  puts "じゃんけん.."
  puts "0(グー)1(チョキ)2(パー)"

  player_hand = gets.to_i
  program_hand = rand(3)
  #3未満の数字がランダムに表示

 if player_hand > 2
   puts "入力された値が無効です"
   return true
 end

 jankens = ["グー","チョキ","パー"]

 puts "あなたの手:#{jankens[player_hand]},相手の手:#{jankens[program_hand]}"
 #配列jankens に入力された0,1,2を代入し、"グー","チョキ","パー"で表示する

 if player_hand == program_hand
   puts "あいこで"
   return true
   #jankenメソッド内にまだ次のゲームがある、trueを返して繰り返し処理
  
 elsif (player_hand == 0 && program_hand == 1) || (player_hand == 1 && program_hand == 2) || (player_hand == 2 && program_hand == 0)
   puts "あっち向いてホイ"
   puts "0(上)1(下)2(左)3(右)"
 
   player_finger = gets.to_i
   program_face = rand(4)
 
   if player_finger > 3
     puts "入力された値が無効です"
     return true
   end
 
   directions = ["上","下","左","右"]
 
   puts "あなた:#{directions[player_finger]},相手:#{directions[program_face]}"
 
   if player_finger == program_face
     puts "あなたの勝ちです"
     return false
  
   else
     return true
   end
  
 else 
   puts "あっち向いてホイ"
   puts "0(上)1(下)2(左)3(右)"
 
   player_face = gets.to_i
   program_finger = rand(4)
 
   if player_face > 3
     puts "入力された値が無効です"
     return true
   end
 
   directions = ["上","下","左","右"]
 
   puts "あなた:#{directions[player_face]},相手:#{directions[program_finger]}"
 
   if player_face == program_finger
     puts "あなたの負けです"
     return false
  
   else
     return true
   end 
 end
 
end

next_game = true
#1回目のジャンケン実行
puts "じゃんけん.."

while next_game do
  next_game = janken
end
#2回目以降、falseが変数next_gameに代入されれば終了
#if文で返り値がtrueであれば、whileメソッドが実行、jankenを呼び出してじゃんけんを繰り返す

 

 

