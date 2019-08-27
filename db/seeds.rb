# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#maker
["レクサス","トヨタ","日産","ホンダ","三菱","マツダ","スバル",
"スズキ","ダイハツ","TVR","アストンマーティン","ジャガー","ロールスロイス","ランドローバー",
"ベントレー","ロータス","MG","ローバー","キャデラック","シボレー","ハマー",
"クライスラー","フォード","サターン","BMW","アウディ","ポルシェ","メルセデス・ベンツ",
"フォルクスワーゲン","オペル","マイバッハ","シトロエン","プジョー","ルノー","ブガッティ",
"フェラーリ","フィアット","アルファロメオ","マセラティ","ランボルギーニ","アウトビアンキ","ランチア","アバルト","サーブ","ボルボ"
].each do |name|
  Maker.create!(
    { name: name }
  )
end
#car
["LS","GS","IS","ES","HS"
].each do |name|
  Car.create!(
    { name: name, maker: Maker.find(1) }
  )
end
["クラウン","アクア","プリウス","86"
].each do |name|
  Car.create!(
    { name: name, maker: Maker.find(2) }
  )
end
#grade
["500 バージョンL 4WD AT","500 Fスポーツ 4WD AT","500 Iパッケージ 4WD AT","500 4WD AT","500 Iパッケージ 4WD AT",
"500h エグゼクティブ CVT","500h バージョンL CVT","500h Fスポーツ CVT","500h Iパッケージ CVT","500h CVT",
"500h エグゼクティブ 4WD CVT","500h バージョンL 4WD CVT","500h Fスポーツ 4WD CVT","500h Iパッケージ 4WD CVT","500h 4WD CVT",
"500 エグゼクティブ AT","500 バージョンL AT","500 Fスポーツ AT"
].each do |name|
  Grade.create!(
    { name: name, car: Car.find(1) }
  )
end
["アスリートG","アスリートS","ロイヤルサルーン","マジェスタ"
].each do |name|
  Grade.create!(
    { name: name, car: Car.find(6) }
  )
end
Grade.where(car_id: 1).each do |grade|
  grade.displacement = 5000
  grade.save
end
Grade.where(car_id: 1).each do |grade|
  grade.fixed_number = 5
  grade.save
end
