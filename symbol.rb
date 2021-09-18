str1 = "str"
str2 = "str"
puts str1.object_id
puts str2.object_id # 異なるIDを返す

sym1 = :str
sym2 = :str
puts sym1.object_id
puts sym2.object_id #参照している中身は同じなのでメモリの消費量を抑えることができる

obj = {name: "hoge", age: "sage"}
puts obj # {:name=>"hoge", :age=>"sage"}
# objのキーは自動でシンボルになる

