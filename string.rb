# string型の学習
test1 = "hogehgoe".upcase
puts test1
test2 = "sagesage".upcase() # rubyでは()を省略してもしなくてもおk
puts test2

# 型の確認
puts test1.class
puts test1.class()
puts test1.slice(3,4) # EHGO

# メソッドの確認
puts test1.downcase # 小文字にする
puts test1.size # 文字数の確認

# 文字列から整数への変換
num = "100"
puts num.to_i
puts num.to_i.class

# 文字列から浮動小数点数への変換
float ="10.655"
puts float.to_f
puts float.to_f.class

# objectのメソッドの確認
# 適当な変数を作って.methodsをするとその変数オブジェクトが使えるメソッドが確認できる


# 文字の連結
puts "hoge" << "sage"
puts "hoge" * 10

# 変数の展開（ダブルクォートで）
hoge = "sunny"
puts "today's weather is #{hoge}"