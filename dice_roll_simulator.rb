$counter = [0, 0, 0, 0, 0, 0] #賽の目のカウンタ
$roll_times = 10000 #試行回数

#賽を振る関数
def roll_dice()
    dice = rand(6)+1
    case dice
        when 1
            $counter[0] += 1
        when 2
            $counter[1] += 1
        when 3
            $counter[2] += 1
        when 4
            $counter[3] += 1
        when 5
            $counter[4] += 1
        when 6
            $counter[5] += 1
    end
end

#試行回数分賽を振る
$roll_times.times do
    roll_dice()
end

#終了のお知らせ　チーーーン
puts %Q(Rolling dice #{$roll_times} times DONE)
puts ''

#1-6の出現回数（確率）の表示
for num in 0..($counter.size-1) do
    puts %(#{num+1} of the dice appeared #{$counter[num]} times [#{$counter[num] / ($roll_times/100).to_f}%])
end