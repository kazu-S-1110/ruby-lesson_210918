str = "string"
puts str
puts str.upcase # 一時的に大文字になる
puts str # ちゃんと元に戻ってくれる

puts str.upcase! #!をつけると破壊的メソッドと呼ばれそれ以降変わってしまう
puts str #STRING

# 似たような感じのやつ(真偽値を返す)
bool = %w[a b c].include?("c")
puts bool