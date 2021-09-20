# methodは変数に代入することができない！！！（callbackにできない,methodを使えば解決）
# procはブロックをオブジェクト化するためのもの
# Rubyのブロックは、メソッド同様、ファーストクラスではありません。従ってメソッドに付する以外にそれが独立してRuby空間内に存在することはできないのです。しかし、メソッドがMethodオブジェクトによってファーストクラス化できるのと同様、Rubyではブロックもファーストクラス化することができます。それがProcオブジェクト（手続きオブジェクト）です。
# https://melborne.github.io/2014/04/28/proc-is-the-path-to-understand-ruby/
hoge = :hoge
proc = Proc.new {puts hoge}

# procの呼び出し
proc.call # hoge

hoge = :fuga
proc.call # fuga

# 中身が未定義の場合、proc作成時点ではエラーを吐かず、発火時点でエラーを吐く
# でも後からproc内の変数を定義してもエラーを吐く。先にprocを定義する意味ないやん、、、

# yieldの使い方 ,ブロックを受け取ることができる
def yield_test
  yield(1,2)
end
puts yield_test { |a,b| a+b}