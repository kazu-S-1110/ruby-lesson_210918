class Book
  def initialize(name = "nothing") #jsでいうconstructor
    puts "Initialize!!"
    @name = name #@が先頭の変数はクラス内で使える変数（インスタンス変数）
  end

  def name #外からアクセスするにはそれ用のメソッドを定義する！
    @name 
  end

  def name=(new_name) #変更するにもメソットを定義しなければならない
    @name = new_name
  end
end
book = Book.new 
puts book.name

# 書くこと多すぎなのでアクセサメソッドを使用する！
class Pc
  attr_accessor :name,:memory #attr_accessorは取得と更新用のメソッド両方を作ってくれる、またカンマ区切りで複数定義が可能
  attr_reader :processor #読み取り用のメソッド
  attr_writer :weight #更新用のメソッド
  def initialize(name = "Macbook")
    @name = name
  end
end

pc = Pc.new
puts pc.name
pc.name = "Macbook Pro"
puts pc.name

# オブジェクトはprojectが終了する度に消えてしまうのでそこを補うにはrails