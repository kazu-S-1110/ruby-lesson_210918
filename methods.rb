def hello(name = "unknown") #defaultの書き方
  puts "Hello, #{name}."
end
hello
hello("hoge")

# 別の書き方（キーワード引数、複数ある場合には順番を変えても処理してくれる）
def hello2(name: "unknown")
  puts "Hello, #{name}"
end

hello2(name: "sage")
hello2

# 可変長引数の書き方
def sum(*values)
  values.inject { |total, n| total + n}
end

puts sum(1,2,3,4,5,6,7)

# アスタリスク2つの場合、オブジェクトを受け取れる
def some_method(**kv_values)
  puts kv_values
end

some_method(params: :aaa, param2: :bbb)