# 例外処理の書き方
begin
  puts 1/ 0 
rescue
  puts "don't divide with 0" #例外が発生したときのみ実行される処理
  # アプリ開発でよく使うメソッド
  # rescue => e
      # p e.backtrace

end


# 複数の例外処理
begin
  hoge
  puts 10/0
rescue ZeroDivisionError => e
  puts "0で割るんじゃない"
rescue => e
  puts "その他のエラーや"
end

# 再度tryさせる記述(retryできるようコードを書かないと無限ループになるので注意)
num = 0
begin
  p 10 /num
rescue ZeroDivisionError => e
  p e
  num =2
  retry
end

# 明示的にエラーを発生させる（throwを投げる
begin
  raise #どんなエラーを投げるか指定することも可能
rescue => e
  p e
end

# 正常でも例外でも実行されるようにする
begin
  puts "no error"
rescue => e
  p e
ensure 
  puts "run ensure" #後処理なんかを書くのに便利
end
