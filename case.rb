val = 3

symbol = case val
  when 1
    :one
  when 2
    :two
  when 3
    :three
  when 4
    :four
  when 5
    :five
  else
    :other
end

puts symbol


val2 = 34
symbol2 = case val2
            when 1..20
              :low
            when 21..50
              :high
            else
              :sohigh
          end

puts symbol2


val3 = "apple"
symbol3 = case val3
  when "apple", "pear", "kiwi", "peach"
    "fruits"
  when "cabbage","tomato", "leek"
    "vagetables"
  else
    "other"
  end

puts symbol3