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
#car_items
["1990年	平成2年","1991年	 平成3年","1992年	 平成4年","1993年	 平成5年","1994年	 平成6年","1995年 平成7年","1996年	 平成8年",
"1997年	平成9年","1998年	平成10年","1999年 平成11年","2000年 平成12年","2001年 平成13年","2002年 平成14年	","2003年 平成15年",
"2004年	平成16年","2005年	 平成17年","2006年 平成18年","2007年 平成19年","2008年	平成20年","2009年	 平成21年","2010年 平成22年",
"2011年	平成23年","2012年 平成24年","2013年 平成25年","2014年 平成26年","2015年	平成27年","2016年	 平成28年","2017年 平成29年",
"2018年	平成30年","2019年 令和元年(平成31年)"
].each do |year|
  CarItem.create!(
    { year: year }
  )
end