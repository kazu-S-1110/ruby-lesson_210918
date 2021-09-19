# 現在時刻の表示(タイムゾーンに従う)
puts Time.now
# タイムゾーンの確認
puts Time.now.zone

# 任意のtimeオブジェクトの作成
datetime = Time.new(2021, 9, 20, 14, 11)
puts datetime

# フォーマットの変換
puts datetime.strftime("%Y年 %M月 %d日  %H:%M") 
# 2021年 11月 20日  14:11

# 外部ライブラリのインポート
require "date" 
puts Date.today