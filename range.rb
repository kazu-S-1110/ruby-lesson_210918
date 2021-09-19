print 1..3
print (1..3).class  #Range
print (1..10).to_a # [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
# ドットを三つにすると最後は含めないようになる
print (1...9).to_a # [1, 2, 3, 4, 5, 6, 7, 8]

# 数字だけでなくアルファベットも可能
alpha = ("a".."z").to_a

alpha.each { |al| puts "print this #{al}"}
