country = "ja"

if country == "ja"
  puts "japan"
elsif country =="us" 
  puts "usa"
  # ruby ではnilとfalseが偽として扱われ、それ以外は真である。
else 
  puts "other country"
end 

# unlessの書き方（偽なら実行される）
unless nil
  puts "nil is falsy"
end 

unless false
  puts "false is falsy"
end

unless 0
  puts "0 is falsy?" # 0はtruty
end

# 短い書き方(coachif, coachunless)
puts "This is Japan!!!" if country == "ja"
puts "this is not us" unless country == "us"

# 三項演算子
pl = country == "ja" ? "japan" : "usa"
puts pl

# if文の返り値
score = 70
res = if score >= 80
        "well done"
elsif score >= 60
  "nice"
  "v nice"
else
  "you need more"
end

puts res #v nice もし複数行あるなら最終行が格納される

