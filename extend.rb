class Greeting
  def hello
    puts "hello, #{@name}"
  end
end

class User < Greeting
  def initialize(name)
    @name = name
  end

  # 継承元のメソッドを上書き（オーバーライド）することも可能（同じ名前を定義すればオーバーライドされる
  def hello
    super #superを使用することで継承元のメソッドを呼び出すことも可能
    puts "sup , #{@name}"
  end
end

user1 = User.new("hoge")
user1.hello

user2 = User.new("sage")
user2.hello