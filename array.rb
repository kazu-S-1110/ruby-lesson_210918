arr = [1,2,3]
puts arr #これだと要素1つ出力される
print arr #まるまる表示するならprint
puts arr.class
# puts arr.methods

# arrへの追加
arr.push(4)
arr << 5
print arr

#　配列の作成方法
arr1 =["ho", "ge"]
arr2 = %w[ho ge] # !や（）で作る方法もある

# 大文字Wで囲うと変数が展開される
ho = "hogehoge"
sa = "sagesage"
arr3 = %W[#{ho} #{sa}]
print arr3

# シンボルの配列の作成方法
arr4 = %i[a b c]
print arr4 
print "\r\n"

# 配列のeach文
arr.each do |i|
  next if i == 2 #スキップ
  break if i == 4 #中断の書式
  puts i
end

# 多重代入
foo, bar = [1, 2]
p foo
p bar
h, s = 101,102
p h
p s
ho, sa, fo = 10,20
p ho
p sa
p fo # nilになる、undefinedとおんなじかな？