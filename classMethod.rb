require "date"

class User 
  attr_accessor :name, :birthday

  def initialize(name, birthday)
    @name = name
    @birthday = birthday 
  end

  def display_birthday #クラス内に書かれた関数をインスタンスメソッドという
    @birthday.strftime("%Yyear %m %d")
  end

  def inner_call_display_birthday
    self.display_birthday #selfは省略することが可能
    display_birthday
  end

  def call_secret_name #private変数を呼び出す時にはselfをつけることはできない（関数形式と呼ぶ）
    secret_name
  end
  # 他にもprotectedがあるけどあまり使われてない。
  private 
  
  def secret_name #クラス内でしか呼び出せない
    @name
  end
end

birthday = Date.new(2000, 1,1)
user = User.new("hoge", birthday)
puts user.display_birthday
puts user.inner_call_display_birthday
puts user.call_secret_name