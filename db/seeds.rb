# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#カテゴリー機能 parent
parent_array = ["メンズ","レディース","ベビー・キッズ","インテリア・住まい・小物","本・音楽・ゲーム","おもちゃ・ホビー・グッズ","コスメ・香水・美容","家電・スマホ・カメラ","スポーツ・レジャー","ハンドメイド","チケット","自動車・オートバイ","その他"]
parent_array.each do |parent|
  Category.create(name: parent)
end

#カテゴリー機能 child
child_array = [["トップス",1],["ジャケット/アウター",1],["パンツ",1],["スカート",1],["ワンピース",1],["靴",1],["ルームウェア/パジャマ",1],["レッグウェア",1],["帽子",1],["バッグ",1],["アクセサリー",1],["ヘアアクセサリー",1],["小物",1],["時計",1],["ウィッグ/エクステ",1],["浴衣/水着",1],["スーツ/フォーマル/ドレス",1],["マタニティ",1],["その他",1],["トップス",2],["ジャケット/アウター",2],["パンツ",2],["靴",2],["バッグ",2],["スーツ",2],["帽子",2],["アクセサリー",2],["小物",2],["時計",2],["水着",2],["レッグウェア",2],["アンダーウェア",2],["その他",2],["ベビー服(女の子用) ~95cm",3],["ベビー服(男の子用) ~95cm",3],["ベビー服(男女兼用) ~95cm",3],["キッズ服(女の子用) 100cm~",3],["キッズ服(男の子用) 100cm~",3],["キッズ服(男女兼用) 100cm~",3],["キッズ靴",3],["子ども用ファッション小物",3],["おむつ/トイレ/バス",3],["外出/移動用品",3],["授乳/食事",3],["ベビー家具/寝具/室内用品",3],["おもちゃ",3],["行事/記念品",3],["その他",3],["キッチン/食器",4],["ベッド/マットレス",4],["ソファ/ソファベッド",4],["椅子/チェア",4],["机/テーブル",4],["収納家具",4],["ラグ/カーペット/マット",4],["カーテン/ブラインド",4],["ライト/照明",4],["寝具",4],["インテリア小物",4],["季節/年中行事",4],["その他",4],["本",5],["漫画",5],["雑誌",5],["CD",5],["DVD/ブルーレイ",5],["レコード",5],["テレビゲーム",5],["おもちゃ",6],["タレントグッズ",6],["コミック/アニメグッズ",6],["トレーディングカード",6],["フィギュア",6],["楽器/器材",6],["コレクション",6],["ミリタリー",6],["美術品",6],["アート用品",6],["その他",6],["ベースメイク",7],["メイクアップ",7],["ネイルケア",7],["香水",7],["スキンケア/基礎化粧品",7],["ヘアケア",7],["ボディケア",7],["オーラルケア",7],["リラクゼーション",7],["ダイエット",7],["その他",7],["スマートフォン/携帯電話",8],["スマホアクセサリー",8],["PC/タブレット",8],["カメラ",8],["テレビ/映像機器",8],["オーディオ機器",8],["美容/健康",8],["冷暖房/空調",8],["生活家電",8],["その他",8],["ゴルフ",9],["フィッシング",9],["自転車",9],["トレーニング/エクササイズ",9],["野球",9],["サッカー/フットサル",9],["テニス",9],["スノーボード",9],["スキー",9],["その他スポーツ",9],["アウトドア",9],["その他",9],["アクセサリー(女性用)",10],["ファッション/小物",10],["アクセサリー/時計",10],["日用品/インテリア",10],["趣味/おもちゃ",10],["キッズ/ベビー",10],["素材/材料",10],["二次創作物",10],["その他",10],["音楽",11],["スポーツ",11],["演劇/芸能",11],["イベント",11],["映画",11],["施設利用券",11],["優待券/割引券",11],["その他",11],["自動車本体",12],["自動車タイヤ/ホイール",12],["自動車パーツ",12],["自動車アクセサリー",12],["オートバイ車体",12],["オートバイパーツ",12],["オートバイアクセサリー",12],["まとめ売り",13],["ペット用品",13],["食品",13],["飲料/酒",13],["日用品/生活雑貨/旅行",13],["アンティーク/コレクション",13],["文房具/事務用品",13],["事務/店舗用品",13],["その他",13]]
child_array.each do |child|
  Category.create(name: child[0],parent_id: child[1])
end

#カテゴリー機能 grandchild
grandchild_array = [["Tシャツ/カットソー(半袖/袖なし)",14],["Tシャツ/カットソー(七分/長袖)",14],["シャツ/ブラウス(半袖/袖なし)",14],["シャツ/ブラウス(七分/長袖)",14],["ポロシャツ",14],["キャミソール",14],["タンクトップ",14],["ホルターネック",14],["ニット/セーター",14],["チュニック",14],["カーディガン/ボレロ",14],["アンサンブル",14],["ベスト/ジレ",14],["パーカー",14],["トレーナー/スウェット",14],["ベアトップ/チューブトップ",14],["ジャージ",14],["その他",14],["テーラードジャケット",15],["ノーカラージャケット",15],["Gジャン/デニムジャケット",15],["レザージャケット",15],["ダウンジャケット",15],["ライダースジャケット",15],["ミリタリージャケット",15],["ダウンベスト",15],["ジャンパー/ブルゾン",15],["ポンチョ",15],["ロングコート",15],["トレンチコート",15],["ダッフルコート",15],["ピーコート",15],["チェスターコート",15],["モッズコート",15],["スタジャン",15],["毛皮/ファーコート",15],["スプリングコート",15],["スカジャン",15],["その他",15],["デニム/ジーンズ",16],["ショートパンツ",16],["カジュアルパンツ",16],["ハーフパンツ",16],["チノパン",16],["ワークパンツ/カーゴパンツ",16],["クロップドパンツ",16],["サロペット/オーバーオール",16],["オールインワン",16],["サルエルパンツ",16],["ガウチョパンツ",16],["その他",16],["ミニスカート",17],["ひざ丈スカート",17],["ロングスカート",17],["キュロット",17],["その他",17],["ミニワンピース",18],["ひざ丈ワンピース",18],["ロングワンピース",18],["その他",18],["ハイヒール/パンプス",19],["ブーツ",19],["サンダル",19],["スニーカー",19],["ミュール",19],["モカシン",19],["ローファー/革靴",19],["フラットシューズ/バレエシューズ",19],["長靴/レインシューズ",19],["その他",19],["パジャマ",20],["ルームウェア",20],["ソックス",21],["スパッツ/レギンス",21],["ストッキング/タイツ",21],["レッグウォーマー",21],["その他",21],["ニットキャップ/ビーニー",22],["ハット",22],["ハンチング/ベレー帽",22],["キャップ",22],["キャスケット",22],["麦わら帽子",22],["その他",22],["ハンドバッグ",23],["トートバッグ",23],["エコバッグ",23],["リュック/バックパック",23],["ボストンバッグ",23],["スポーツバッグ",23],["ショルダーバッグ",23],["クラッチバッグ",23],["ポーチ/バニティ",23],["ボディバッグ/ウェストバッグ",23],["マザーズバッグ",23],["メッセンジャーバッグ",23],["ビジネスバッグ",23],["旅行用バッグ/キャリーバッグ",23],["ショップ袋",23],["和装用バッグ",23],["かごバッグ",23],["その他",23],["ネックレス",24],["ブレスレット",24],["バングル/リストバンド",24],["リング",24],["ピアス(片耳用)",24],["ピアス(両耳用)",24],["イヤリング",24],["アンクレット",24],["ブローチ/コサージュ",24],["チャーム",24],["その他",24],["ヘアゴム/シュシュ",25],["ヘアバンド/カチューシャ",25],["ヘアピン",25],["その他",25],["長財布",26],["折り財布",26],["コインケース/小銭入れ",26],["名刺入れ/定期入れ",26],["キーケース",26],["キーホルダー",26],["手袋/アームカバー",26],["ハンカチ",26],["ベルト",26],["マフラー/ショール",26],["ストール/スヌード",26],["バンダナ/スカーフ",26],["ネックウォーマー",26],["サスペンダー",26],["サングラス/メガネ",26],["モバイルケース/カバー",26],["手帳",26],["イヤマフラー",26],["傘",26],["レインコート/ポンチョ",26],["ミラー",26],["タバコグッズ",26],["その他",26],["腕時計(アナログ)",27],["腕時計(デジタル)",27],["ラバーベルト",27],["レザーベルト",27],["金属ベルト",27],["その他",27],["前髪ウィッグ",28],["ロングストレート",28],["ロングカール",28],["ショートストレート",28],["ショートカール",28],["その他",28],["浴衣",29],["着物",29],["振袖",29],["長襦袢/半襦袢",29],["水着セパレート",29],["水着ワンピース",29],["水着スポーツ用",29],["その他",29],["スカートスーツ上下",30],["パンツスーツ上下",30],["ドレス",30],["パーティーバッグ",30],["シューズ",30],["ウェディング",30],["その他",30],["トップス",31],["アウター",31],["インナー",31],["ワンピース",31],["パンツ/スパッツ",31],["スカート",31],["パジャマ",31],["授乳服",31],["その他",31],["コスプレ",32],["下着",32],["その他",32],["Tシャツ/カットソー(半袖/袖なし)",33],["Tシャツ/カットソー(七分/長袖)",33],["シャツ",33],["ポロシャツ",33],["タンクトップ",33],["ニット/セーター",33],["パーカー",33],["カーディガン",33],["スウェット",33],["ジャージ",33],["ベスト",33],["その他",33],["テーラードジャケット",34],["ノーカラージャケット",34],["Gジャン/デニムジャケット",34],["レザージャケット",34],["ダウンジャケット",34],["ライダースジャケット",34],["ミリタリージャケット",34],["ナイロンジャケット",34],["フライトジャケット",34],["ダッフルコート",34],["ピーコート",34],["ステンカラーコート",34],["トレンチコート",34],["モッズコート",34],["チェスターコート",34],["スタジャン",34],["スカジャン",34],["ブルゾン",34],["マウンテンパーカー",34],["ダウンベスト",34],["ポンチョ",34],["カバーオール",34],["その他",34],["デニム/ジーンズ",35],["ワークパンツ/カーゴパンツ",35],["スラックス",35],["チノパン",35],["ショートパンツ",35],["ペインターパンツ",35],["サルエルパンツ",35],["オーバーオール",35],["その他",35],["スニーカー",36],["サンダル",36],["ブーツ",36],["モカシン",36],["ドレス/ビジネス",36],["長靴/レインシューズ",36],["デッキシューズ",36],["その他",36],["ショルダーバッグ",37],["トートバッグ",37],["ボストンバッグ",37],["リュック/バックパック",37],["ウエストポーチ",37],["ボディーバッグ",37],["ドラムバッグ",37],["ビジネスバッグ",37],["トラベルバッグ",37],["メッセンジャーバッグ",37],["エコバッグ",37],["その他",37],["スーツジャケット",38],["スーツベスト",38],["スラックス",38],["セットアップ",38],["その他",38],["キャップ",39],["ハット",39],["ニットキャップ/ビーニー",39],["ハンチング/ベレー帽",39],["キャスケット",39],["サンバイザー",39],["その他",39],["ネックレス",40],["ブレスレット",40],["バングル/リストバンド",40],["リング",40],["ピアス(片耳用)",40],["ピアス(両耳用)",40],["アンクレット",40],["その他",40],["長財布",41],["折り財布",41],["マネークリップ",41],["コインケース/小銭入れ",41],["名刺入れ/定期入れ",41],["キーケース",41],["キーホルダー",41],["ネクタイ",41],["手袋",41],["ハンカチ",41],["ベルト",41],["マフラー",41],["ストール",41],["バンダナ",41],["ネックウォーマー",41],["サスペンダー",41],["ウォレットチェーン",41],["サングラス/メガネ",41],["モバイルケース/カバー",41],["手帳",41],["ストラップ",41],["ネクタイピン",41],["カフリンクス",41],["イヤマフラー",41],["傘",41],["レインコート",41],["ミラー",41],["タバコグッズ",41],["その他",41],["腕時計(アナログ)",42],["腕時計(デジタル)",42],["ラバーベルト",42],["レザーベルト",42],["金属ベルト",42],["その他",42],["一般水着",43],["スポーツ用",43],["アクセサリー",43],["その他",43],["ソックス",44],["レギンス/スパッツ",44],["レッグウォーマー",44],["その他",44],["トランクス",45],["ボクサーパンツ",45],["その他",45],["トップス",46],["アウター",46],["パンツ",46],["スカート",46],["ワンピース",46],["ベビードレス",46],["おくるみ",46],["下着/肌着",46],["パジャマ",46],["ロンパース",46],["その他",46],["トップス",47],["アウター",47],["パンツ",47],["おくるみ",47],["下着/肌着",47],["パジャマ",47],["ロンパース",47],["その他",47],["トップス",48],["アウター",48],["パンツ",48],["おくるみ",48],["下着/肌着",48],["パジャマ",48],["ロンパース",48],["その他",48],["コート",49],["ジャケット/上着",49],["トップス(Tシャツ/カットソー)",49],["トップス(トレーナー)",49],["トップス(チュニック)",49],["トップス(タンクトップ)",49],["トップス(その他)",49],["スカート",49],["パンツ",49],["ワンピース",49],["セットアップ",49],["パジャマ",49],["フォーマル/ドレス",49],["和服",49],["浴衣",49],["甚平",49],["水着",49],["その他",49],["コート",50],["ジャケット/上着",50],["トップス(Tシャツ/カットソー)",50],["トップス(トレーナー)",50],["トップス(その他)",50],["パンツ",50],["セットアップ",50],["パジャマ",50],["フォーマル/ドレス",50],["和服",50],["浴衣",50],["甚平",50],["水着",50],["その他",50],["コート",51],["ジャケット/上着",51],["トップス(Tシャツ/カットソー)",51],["トップス(トレーナー)",51],["トップス(その他)",51],["ボトムス",51],["パジャマ",51],["その他",51],["スニーカー",52],["サンダル",52],["ブーツ",52],["長靴",52],["その他",52],["靴下/スパッツ",53],["帽子",53],["エプロン",53],["サスペンダー",53],["タイツ",53],["ハンカチ",53],["バンダナ",53],["ベルト",53],["マフラー",53],["傘",53],["手袋",53],["スタイ",53],["バッグ",53],["その他",53],["おむつ用品",54],["おまる/補助便座",54],["トレーニングパンツ",54],["ベビーバス",54],["お風呂用品",54],["その他",54],["ベビーカー",55],["抱っこひも/スリング",55],["チャイルドシート",55],["その他",55],["ミルク",56],["ベビーフード",56],["ベビー用食器",56],["その他",56],["ベッド",57],["布団/毛布",57],["イス",57],["たんす",57],["その他",57],["おふろのおもちゃ",58],["がらがら",58],["オルゴール",58],["ベビージム",58],["手押し車/カタカタ",58],["知育玩具",58],["その他",58],["お宮参り用品",59],["お食い初め用品",59],["アルバム",59],["手形/足形",59],["その他",59],["母子手帳用品",60],["その他",60],["食器",61],["調理器具",61],["収納/キッチン雑貨",61],["弁当用品",61],["カトラリー(スプーン等)",61],["テーブル用品",61],["容器",61],["エプロン",61],["アルコールグッズ",61],["浄水機",61],["その他",61],["セミシングルベッド",62],["シングルベッド",62],["セミダブルベッド",62],["ダブルベッド",62],["ワイドダブルベッド",62],["クイーンベッド",62],["キングベッド",62],["脚付きマットレスベッド",62],["マットレス",62],["すのこベッド",62],["ロフトベッド/システムベッド",62],["簡易ベッド/折りたたみベッド",62],["収納付き",62],["その他",62],["ソファセット",63],["シングルソファ",63],["ラブソファ",63],["トリプルソファ",63],["オットマン",63],["コーナーソファ",63],["ビーズソファ/クッションソファ",63],["ローソファ/フロアソファ",63],["ソファベッド",63],["応接セット",63],["ソファカバー",63],["リクライニングソファ",63],["その他",63],["一般",64],["スツール",64],["ダイニングチェア",64],["ハイバックチェア",64],["ロッキングチェア",64],["座椅子",64],["折り畳みイス",64],["デスクチェア",64],["その他",64],["こたつ",65],["カウンターテーブル",65],["サイドテーブル",65],["センターテーブル",65],["ダイニングテーブル",65],["座卓/ちゃぶ台",65],["アウトドア用",65],["パソコン用",65],["事務机/学習机",65],["その他",65],["リビング収納",66],["キッチン収納",66],["玄関/屋外収納",66],["バス/トイレ収納",66],["本収納",66],["本/CD/DVD収納",66],["洋服タンス/押入れ収納",66],["電話台/ファックス台",66],["ドレッサー/鏡台",66],["棚/ラック",66],["ケース/ボックス",66],["その他",66],["ラグ",67],["カーペット",67],["ホットカーペット",67],["玄関/キッチンマット",67],["トイレ/バスマット",67],["その他",67],["カーテン",68],["ブラインド",68],["ロールスクリーン",68],["のれん",68],["その他",68],["蛍光灯/電球",69],["天井照明",69],["フロアスタンド",69],["その他",69],["布団/毛布",70],["枕",70],["シーツ/カバー",70],["その他",70],["ごみ箱",71],["ウェルカムボード",71],["オルゴール",71],["クッション",71],["クッションカバー",71],["スリッパラック",71],["ティッシュボックス",71],["バスケット/かご",71],["フォトフレーム",71],["マガジンラック",71],["モビール",71],["花瓶",71],["灰皿",71],["傘立て",71],["小物入れ",71],["置時計",71],["掛時計/柱時計",71],["鏡(立て掛け式)",71],["鏡(壁掛け式)",71],["置物",71],["風鈴",71],["植物/観葉植物",71],["その他",71],["正月",72],["成人式",72],["バレンタインデー",72],["ひな祭り",72],["子どもの日",72],["母の日",72],["父の日",72],["サマーギフト/お中元",72],["夏/夏休み",72],["ハロウィン",72],["敬老の日",72],["七五三",72],["お歳暮",72],["クリスマス",72],["冬一般",72],["その他",72],["文学/小説",73],["人文/社会",73],["ノンフィクション/教養",73],["地図/旅行ガイド",73],["ビジネス/経済",73],["健康/医学",73],["コンピュータ/IT",73],["趣味/スポーツ/実用",73],["住まい/暮らし/子育て",73],["アート/エンタメ",73],["洋書",73],["絵本",73],["参考書",73],["その他",73],["全巻セット",74],["少年漫画",74],["少女漫画",74],["青年漫画",74],["女性漫画",74],["同人誌",74],["その他",74],["アート/エンタメ/ホビー",75],["ファッション",75],["ニュース/総合",75],["趣味/スポーツ",75],["その他",75],["邦楽",76],["洋楽",76],["アニメ",76],["クラシック",76],["K-POP/アジア",76],["キッズ/ファミリー",76],["その他",76],["外国映画",77],["日本映画",77],["アニメ",77],["TVドラマ",77],["ミュージック",77],["お笑い/バラエティ",77],["スポーツ/フィットネス",77],["キッズ/ファミリー",77],["その他",77],["邦楽",78],["洋楽",78],["その他",78],["家庭用ゲーム本体",79],["家庭用ゲームソフト",79],["携帯用ゲーム本体",79],["携帯用ゲームソフト",79],["PCゲーム",79],["その他",79],["キャラクターグッズ",80],["ぬいぐるみ",80],["小物/アクセサリー",80],["模型/プラモデル",80],["ミニカー",80],["トイラジコン",80],["プラモデル",80],["ホビーラジコン",80],["鉄道模型",80],["その他",80],["アイドル",81],["ミュージシャン",81],["タレント/お笑い芸人",81],["スポーツ選手",81],["その他",81],["ストラップ",82],["キーホルダー",82],["バッジ",82],["カード",82],["クリアファイル",82],["ポスター",82],["タオル",82],["その他",82],["遊戯王",83],["マジック：ザ・ギャザリング",83],["ポケモンカードゲーム",83],["デュエルマスターズ",83],["バトルスピリッツ",83],["プリパラ",83],["アイカツ",83],["カードファイト!!",83],["ヴァンガード",83],["ヴァイスシュヴァルツ",83],["プロ野球オーナーズリーグ",83],["ベースボールヒーローズ",83],["ドラゴンボール",83],["スリーブ",83],["その他",83],["コミック/アニメ",84],["特撮",84],["ゲームキャラクター",84],["SF/ファンタジー/ホラー",84],["アメコミ",84],["スポーツ",84],["ミリタリー",84],["その他",84],["エレキギター",85],["アコースティックギター",85],["ベース",85],["エフェクター",85],["アンプ",85],["弦楽器",85],["管楽器",85],["鍵盤楽器",85],["打楽器",85],["和楽器",85],["楽譜/スコア",85],["レコーディング/PA機器",85],["DJ機器",85],["DTM/DAW",85],["その他",85],["武具",86],["使用済切手/官製はがき",86],["旧貨幣/金貨/銀貨/記念硬貨",86],["印刷物",86],["ノベルティグッズ",86],["その他",86],["トイガン",87],["個人装備",87],["その他",87],["陶芸",88],["ガラス",88],["漆芸",88],["金属工芸",88],["絵画/タペストリ",88],["版画",88],["彫刻/オブジェクト",88],["書",88],["写真",88],["その他",88],["画材",89],["額縁",89],["その他",89],["トランプ/UNO",90],["カルタ/百人一首",90],["ダーツ",90],["ビリヤード",90],["麻雀",90],["パズル/ジグソーパズル",90],["囲碁/将棋",90],["オセロ/チェス",90],["人生ゲーム",90],["野球/サッカーゲーム",90],["スポーツ",90],["三輪車/乗り物",90],["ヨーヨー",90],["模型製作用品",90],["鉄道",90],["航空機",90],["アマチュア無線",90],["パチンコ/パチスロ",90],["その他",90],
                    ["トライアルセット/サンプル",91],["その他",91],["アイシャドウ",92],["口紅",92],["リップグロス",92],["リップライナー",92],["チーク",92],["フェイスカラー",92],["マスカラ",92],["アイライナー",92],["つけまつげ",92],["アイブロウペンシル",92],["パウダーアイブロウ",92],["眉マスカラ",92],["トライアルセット/サンプル",92],["メイク道具/化粧小物",92],["美顔用品/美顔ローラー",92],["その他",92],["ネイルカラー",93],["カラージェル",93],["ネイルベースコート/トップコート",93],["ネイルアート用品",93],["ネイルパーツ",93],["ネイルチップ/付け爪",93],["手入れ用具",93],["除光液",93],["その他",93],["香水(女性用)",94],["香水(男性用)",94],["ユニセックス",94],["ボディミスト",94],["その他",94],["化粧水/ローション",95],["乳液/ミルク",95],["美容液",95],["フェイスクリーム",95],["洗顔料",95],["クレンジング/メイク落とし",95],["パック/フェイスマスク",95],["ジェル/ゲル",95],["ブースター/導入液",95],["アイケア",95],["リップケア",95],["トライアルセット/サンプル",95],["洗顔グッズ",95],["その他",95],["シャンプー",96],["トリートメント",96],["コンディショナー",96],["リンス",96],["スタイリング剤",96],["カラーリング剤",96],["ブラシ",96],["その他",96],["オイル/クリーム",97],["ハンドクリーム",97],["ローション",97],["日焼け止め/サンオイル",97],["ボディソープ",97],["入浴剤",97],["制汗/デオドラント",97],["フットケア",97],["その他",97],["口臭防止/エチケット用品",98],["歯ブラシ",98],["その他",98],["エッセンシャルオイル",99],["芳香器",99],["お香/香炉",99],["キャンドル",99],["リラクゼーショングッズ",99],["その他",99],["ダイエット食品",100],["エクササイズ用品",100],["体重計",100],["体脂肪計",100],["その他",100],["健康用品",101],["看護/介護用品",101],["救急/衛生用品",101],["その他",101],["スマートフォン本体",102],["バッテリー/充電器",102],["携帯電話本体",102],["PHS本体",102],["その他",102],["Android用ケース",103],["iPhone用ケース",103],["カバー",103],["イヤホンジャック",103],["ストラップ",103],["フィルム",103],["自撮り棒",103],["その他",103],["タブレット",104],["ノートPC",104],["デスクトップ型PC",104],["ディスプレイ",104],["電子ブックリーダー",104],["PC周辺機器",104],["PCパーツ",104],["その他",104],["デジタルカメラ",105],["ビデオカメラ",105],["レンズ(単焦点)",105],["レンズ(ズーム)",105],["フィルムカメラ",105],["防犯カメラ",105],["その他",105],["テレビ",106],["プロジェクター",106],["ブルーレイレコーダー",106],["DVDレコーダー",106],["ブルーレイプレーヤー",106],["DVDプレーヤー",106],["映像用ケーブル",106],["その他",106],["ポータブルプレーヤー",107],["イヤフォン",107],["ヘッドフォン",107],["アンプ",107],["スピーカー",107],["ケーブル/シールド",107],["ラジオ",107],["その他",107],["ヘアドライヤー",108],["ヘアアイロン",108],["美容機器",108],["電気シェーバー",108],["電動歯ブラシ",108],["その他",108],["エアコン",109],["空気清浄器",109],["加湿器",109],["扇風機",109],["除湿機",109],["ファンヒーター",109],["電気ヒーター",109],["オイルヒーター",109],["ストーブ",109],["ホットカーペット",109],["こたつ",109],["電気毛布",109],["その他",109],["冷蔵庫",110],["洗濯機",110],["炊飯器",110],["電子レンジ/オーブン",110],["調理機器",110],["アイロン",110],["掃除機",110],["エスプレッソマシン",110],["コーヒーメーカー",110],["衣類乾燥機",110],["その他",110],["その他",111],["クラブ",112],["ウエア(男性用)",112],["ウエア(女性用)",112],["バッグ",112],["シューズ(男性用)",112],["シューズ(女性用)",112],["アクセサリー",112],["その他",112],["ロッド",113],["リール",113],["ルアー用品",113],["ウエア",113],["釣り糸/ライン",113],["その他",113],["自転車本体",114],["ウエア",114],["パーツ",114],["アクセサリー",114],["バッグ",114],["工具/メンテナンス",114],["その他",114],["ランニング",115],["ウォーキング",115],["ヨガ",115],["トレーニング用品",115],["その他",115],["ウェア",116],["シューズ",116],["グローブ",116],["バット",116],["アクセサリー",116],["防具",116],["練習機器",116],["記念グッズ",116],["応援グッズ",116],["その他",116],["ウェア",117],["シューズ",117],["ボール",117],["アクセサリー",117],["記念グッズ",117],["応援グッズ",117],["その他",117],["ラケット(硬式用)",118],["ラケット(軟式用)",118],["ウェア",118],["シューズ",118],["ボール",118],["アクセサリー",118],["記念グッズ",118],["応援グッズ",118],["その他",118],["ボード",119],["バインディング",119],["ブーツ(男性用)",119],["ブーツ(女性用)",119],["ブーツ(子ども用)",119],["ウエア/装備(男性用)",119],["ウエア/装備(女性用)",119],["ウエア/装備(子ども用)",119],["アクセサリー",119],["バッグ",119],["その他",119],["板",120],["ブーツ(男性用)",120],["ブーツ(女性用)",120],["ブーツ(子ども用)",120],["ビンディング",120],["ウエア(男性用)",120],["ウエア(女性用)",120],["ウエア(子ども用)",120],["ストック",120],["その他",120],["ダンス/バレエ",121],["サーフィン",121],["バスケットボール",121],["バドミントン",121],["バレーボール",121],["スケートボード",121],["陸上競技",121],["ラグビー",121],["アメリカンフットボール",121],["ボクシング",121],["ボウリング",121],["その他",121],["テント/タープ",122],["ライト/ランタン",122],["寝袋/寝具",122],["テーブル/チェア",122],["ストーブ/コンロ",122],["調理器具",122],["食器",122],["登山用品",122],["その他",122],["旅行用品",123],["その他",123],["ピアス",124],["イヤリング",124],["ネックレス",124],["ブレスレット",124],["リング",124],["チャーム",124],["ヘアゴム",124],["アンクレット",124],["その他",124],["バッグ(女性用)",125],["バッグ(男性用)",125],["財布(女性用)",125],["財布(男性用)",125],["ファッション雑貨",125],["その他",125],["アクセサリー(男性用)",126],["時計(女性用)",126],["時計(男性用)",126],["その他",126],["キッチン用品",127],["家具",127],["文房具",127],["アート/写真",127],["アロマ/キャンドル",127],["フラワー/ガーデン",127],["その他",127],["クラフト/布製品",128],["おもちゃ/人形",128],["その他",128],["ファッション雑貨",129],["スタイ/よだれかけ",129],["外出用品",129],["ネームタグ",129],["その他",129],["各種パーツ",130],["生地/糸",130],["型紙/パターン",130],["その他",130],["Ingress",131],["クリエイターズ宇宙兄弟",131],["男性アイドル",132],["女性アイドル",132],["韓流",132],["国内アーティスト",132],["海外アーティスト",132],["音楽フェス",132],["声優/アニメ",132],["その他",132],["サッカー",133],["野球",133],["テニス",133],["格闘技/プロレス",133],["相撲/武道",133],["ゴルフ",133],["バレーボール",133],["バスケットボール",133],["モータースポーツ",133],["ウィンタースポーツ",133],["その他",133],["ミュージカル",134],["演劇",134],["伝統芸能",134],["落語",134],["お笑い",134],["オペラ",134],["サーカス",134],["バレエ",134],["その他",134],["声優/アニメ",135],["キッズ/ファミリー",135],["トークショー/講演会",135],["その他",135],["邦画",136],["洋画",136],["その他",136],["遊園地/テーマパーク",137],["美術館/博物館",137],["スキー場",137],["ゴルフ場",137],["フィットネスクラブ",137],["プール",137],["ボウリング場",137],["水族館",137],["動物園",137],["その他",137],["ショッピング",138],["レストラン/食事券",138],["フード/ドリンク券",138],["宿泊券",138],["その他",138],["国内自動車本体",139],["外国自動車本体",139],["タイヤ/ホイールセット",140],["タイヤ",140],["ホイール",140],["その他",140],["サスペンション",141],["ブレーキ",141],["外装、エアロパーツ",141],["ライト",141],["内装品、シート",141],["ステアリング",141],["マフラー・排気系",141],["エンジン、過給器、冷却装置",141],["クラッチ、ミッション、駆動系",141],["電装品",141],["補強パーツ",141],["汎用パーツ",141],["外国自動車用パーツ",141],["その他",141],["車内アクセサリー",142],["カーナビ",142],["カーオーディオ",142],["車外アクセサリー",142],["メンテナンス用品",142],["チャイルドシート",142],["ドライブレコーダー",142],["レーダー探知機",142],["カタログ/マニュアル",142],["セキュリティ",142],["ETC",142],["その他",142],["タイヤ",143],["マフラー",143],["エンジン、冷却装置",143],["カウル、フェンダー、外装",143],["サスペンション",143],["ホイール",143],["シート",143],["ブレーキ",143],["タンク",143],["ライト、ウィンカー",143],["チェーン、スプロケット、駆動系",143],["メーター",143],["電装系",143],["ミラー",143],["外国オートバイ用パーツ",143],["その他",143],["ヘルメット/シールド",144],["バイクウエア/装備",144],["アクセサリー",144],["メンテナンス",144],["カタログ/マニュアル",144],["その他",144],["ペットフード",145],["犬用品",145],["猫用品",145],["魚用品/水草",145],["小動物用品",145],["爬虫類/両生類用品",145],["かご/おり",145],["鳥用品",145],["虫類用品",145],["その他",145],["菓子",146],["米",146],["野菜",146],["果物",146],["調味料",146],["魚介類(加工食品)",146],["肉類(加工食品)",146],["その他",146],["加工食品",146],["その他",146],["コーヒー",147],["ソフトドリンク",147],["ミネラルウォーター",147],["茶",147],["ウイスキー",147],["ワイン",147],["ブランデー",147],["焼酎",147],["日本酒",147],["ビール、発泡酒",147],["その他",147],["タオル/バス用品",148],["日用品/生活雑貨",148],["洗剤/柔軟剤",148],["旅行用品",148],["防災関連グッズ",148],["その他",148],["雑貨",149],["工芸品",149],["家具",149],["印刷物",149],["その他",149],["筆記具",150],["ノート/メモ帳",150],["テープ/マスキングテープ",150],["カレンダー/スケジュール",150],["アルバム/スクラップ",150],["ファイル/バインダー",150],["はさみ/カッター",150],["カードホルダー/名刺管理",150],["のり/ホッチキス",150]]
grandchild_array.each do |grandchild|
  Category.create(name: grandchild[0] , parent_id: grandchild[1])
end