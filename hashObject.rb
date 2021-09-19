ob = { id: 2 , name: "hoge"}
# puts ob[id] #error
print ob #{:id=>2, :name=>"hoge"}
puts "\r\n"
puts ob[:id] #オブジェクトをする時はシンボルで参照する

# もしキーを明示的に示す場合には以下のようにオブジェクトを書く。
ob2 = { "id" => 3, "name" => "sage"}
puts ob2["id"] 

# オブジェクトを階層にして宣言する時は以下のように書く
ob3 = {
  id: 3 ,
  name: "sage",
  detail:{
    like: "math",
    dislike: "science"
  }
}
print ob3
# オブジェクトの深くまでアクセスするときは以下のように書く
puts ob3[:detail][:like]

#　key取得メソッド
puts ob3.keys
# values取得メソッド
puts ob3.values
# 削除メソッド
ob3.delete(:detail)
print ob3