def janken
    puts "0(グー) 1(チョキ) 2(パー) 3(戦わない)" 
    while true
     player_hand = gets.chomp.to_i
     break if (0..3).include?(player_hand)
     puts "不正な値です！" 
    end
    if player_hand == 3
     exit
    end
    
    program_hand = rand(3)
    jankens = ["グー", "チョキ", "パー"] 
    puts "あなたの手:#{jankens[player_hand]}, 相手の手:#{jankens[program_hand]}" 
    if player_hand == program_hand 
     puts "あいこで..." 
     janken
     return true 
    elsif (player_hand == 0 && program_hand == 1) || (player_hand == 1 && program_hand == 2) || (player_hand == 2 && program_hand == 0) 
     puts "あなたの勝ちです！" 
     acchi_muite_hoi
     return false 
    else 
     puts "あなたの負けです！" 
     acchi_muite_hoi_1
     return false 
    end

end

def acchi_muite_hoi
    puts "----------------------------"
    puts "あっち向いてホイをしましょう！" 
    puts "あっち向いて〜" 
    puts "0(上) 1(下) 2(左) 3(右)" 
    while true
     player_direction = gets.chomp.to_i 
     break if (0..3).include?(player_direction)
     puts "不正な値です！"
    end
    program_direction = rand(4) 
    directions = ["上", "下", "左", "右"] 
    puts "----------------------------"
    puts "あなたの向き:#{directions[player_direction]}, 相手の向き:#{directions[program_direction]}" 
    if player_direction == program_direction 
     puts "あなたの勝ちです！" 
     puts "----------------------------"
     exit
     return true
    else 
     puts "残念！" 
     puts "もう一度！！"
     puts "----------------------------"
     janken
     return false 
    end
end

def acchi_muite_hoi_1
    puts "----------------------------"
    puts "あっち向いてホイをしましょう！"
    puts "あっち向いて〜"
    puts "0(上) 1(下) 2(左) 3(右)"
    while true
     player_direction_1 = gets.chomp.to_i
     break if (0..3).include?(player_direction_1)
     puts "不正な値です！"
    end
    program_direction_1 = rand(4)
    directions_1 = ["上", "下", "左", "右"]
    puts "----------------------------"
    puts "あなたの向き:#{directions_1[player_direction_1]}, 相手の向き:#{directions_1[program_direction_1]}"
    if player_direction_1 == program_direction_1
     puts "あなたの負けです！"
     puts "----------------------------"
     exit
     return true
    else
     puts "やった！"
     puts "もう一度！！"
     puts "----------------------------"
     janken
     return false
    end
end

puts "じゃんけん..."
janken_game = true
while janken_game do
    janken_game = janken
end

