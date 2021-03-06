class Enquiry < ApplicationRecord
belongs_to :user
enum areas: ["北海道","青森県","岩手県","宮城県","秋田県","山形県","福島県",
			"茨城県","栃木県","群馬県","埼玉県","千葉県","東京都","神奈川県",
			"新潟県","富山県","石川県","福井県","山梨県","長野県","岐阜県",
			"静岡県","愛知県","三重県","滋賀県","京都府","大阪府","兵庫県",
			"奈良県","和歌山県","鳥取県","島根県","岡山県","広島県","山口県",
			"徳島県","香川県","愛媛県","高知県","福岡県","佐賀県","長崎県",
			"熊本県","大分県","宮崎県","鹿児島県","沖縄県"]

enum insurance_selects:["保険に加入したい", "保険の見直し", "その他"]

enum mycar_makers:["レクサス","トヨタ","日産","ホンダ","三菱","マツダ","スバル",
				"スズキ","ダイハツ","TVR","アストンマーティン","ジャガー","ロールスロイス","ランドローバー",
				"ベントレー","ロータス","MG","ローバー","キャデラック","シボレー","ハマー",
				"クライスラー","フォード","サターン","BMW","アウディ","ポルシェ","メルセデス・ベンツ",
				"フォルクスワーゲン","オペル","マイバッハ","シトロエン","プジョー","ルノー","ブガッティ",
				"フェラーリ","フィアット","アルファロメオ","マセラティ","ランボルギーニ","アウトビアンキ","ランチア",
				"アバルト","サーブ","ボルボ"]

enum mycar_years:["1990年 平成2年","1991年 平成3年","1992年 平成4年","1993年 平成5年","1994年 平成6年","1995年 平成7年","1996年	 平成8年",
				"1997年	平成9年","1998年	平成10年","1999年 平成11年","2000年 平成12年","2001年 平成13年","2002年 平成14年	","2003年 平成15年",
				"2004年	平成16年","2005年	 平成17年","2006年 平成18年","2007年 平成19年","2008年	平成20年","2009年	 平成21年","2010年 平成22年",
				"2011年	平成23年","2012年 平成24年","2013年 平成25年","2014年 平成26年","2015年	平成27年","2016年	 平成28年","2017年 平成29年",
				"2018年	平成30年","2019年 令和元年(平成31年)"]

enum mycar_distances:["不明","~5000km","10001km~15000km","15001km~20000km","20001km~25000km","25001km~30000km","30001km~35000km",
					"35001km~40000km","40001km~45000km","45001km~50000km","50001km~55000km","55001km~60000km","60001km~65000km",
					"65001km~70000km","70001km~75000km","75001km~80000km","80001km~85000km","85001km~90000km","90001km~95000km",
					"95001km~100000km","100000km以上"]

enum numbers:["査定", "在庫確認", "車検", "保険", "修理"]
end