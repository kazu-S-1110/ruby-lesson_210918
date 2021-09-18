puts 5 % 2 # 剰余の計算
puts 2 ** 5 # べき乗の計算

puts 1.5.round # 四捨五入のメソッド
puts 1.4.round

puts 1.3.ceil # 切り上げ
puts 1.4.floor # 切り下げ

# enumerater　指定したものを繰り返し行う
4.times do |i|
  puts "#{i}、JavaScriptでいうfor文だね"
end

# 上の省略版（rubyのお約束で一行のときは以下の書き方、複数行なら上の書き方をする）
6.times { |num| puts num　}


