Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  # ルートアクセスが来た際のルーティングを定義。BoardControllerクラスのindexメソッドを実行するよう定義している。
  root "boards#index"
end
