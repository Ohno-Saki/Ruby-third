 require "csv"
 
 puts "1(新規でメモを作成) 2(既存のメモ編集する)"
 memo_type = gets.to_i
 
 if memo_type == 1
  puts "拡張子を除いたファイル名を入力してください"
  title = gets.chomp
 
   puts "メモしたい内容を入力し。Enterを押してください"
   puts "入力完了後、Ctrl + D を押してください"
   memo = $stdin.read
   
   CSV.open("#{title}.csv","w") do |csv|
    csv.puts ["#{memo}"]
   end
  
 elsif memo_type == 2
  puts "編集したいファイル名を拡張子を除いて入力してください"
  title = gets.chomp
  
   puts "メモしたい内容を入力し、Enterを押してください"
   puts "入力完了後、Ctrl + D を押してください"
   memo = $stdin.read
   
  CSV.open("#{title}.csv","a") do |csv|
   csv.puts ["#{memo}"]
  end
 
 else 
  puts "はじめからやり直してください"
 
 end
    

  

