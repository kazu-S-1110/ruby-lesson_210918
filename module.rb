module SampleModule
  CONST_NUM = 100

  def const_num
    CONST_NUM
  end

  #モジュールメソッドの定義
  def module_function_sum(a,b)
    a + b
  end
  module_function :module_function_sum
end

#モジュール内の変数にアクセスする方法はいくつかある
puts SampleModule::CONST_NUM 

#includeしてしまえば直接アクセスできる(includeしないとだめよ)
include SampleModule
puts const_num
puts CONST_NUM

# モジュールメソッドを使用する方法
puts SampleModule.module_function_sum(4,6)

# クラスにモジュールを取り込む方法（ミックスインって呼ぶ？
module Module1
  def sum(a,b)
    a * b
  end
end

class Sample
  include Module1
  
  def call_sum(a,b)
    sum(a,b)
  end
end

sample = Sample.new
puts sample.sum(1,3)
puts sample.call_sum(6,7)