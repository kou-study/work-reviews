# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

(1..10).each do |number|
    User.create(name: 'test_user' + number.to_s, password: 'test' + number.to_s)
end

Movie.create(category: 0, title: 'あしたのジョー', company:'虫プロダクション', year: 1970, 
             synopsis: '泪橋と呼ばれる橋を渡ると広がる下町のドヤ街に､ある日フラリとひとりの少年･矢吹丈が訪れるところから物語は始まる。
                        生まれついての風来坊である彼は､そこで喧嘩の腕を披露して､ヤクザにからまれている少女･サチを助ける。
                        それを見ていた拳闘狂の丹下段平から､丈は､ボクシングへの道を勧められるが､その申し出をあっさりと断る。
                        ところが､慈善家の財閥令嬢･白木葉子からお金を騙し取ったことが原因で丈は少年院に送られ､そこで後のライバル･力石徹と出会うことに。
                        力石のパンチに沈み､初めての敗北感を味わった彼は､俄然ボクシングに対する興味を燃やし､段平の特訓を受けることを決意する。
                        かくして､ふたりの若者の想像を絶する闘いの日々は始まった。', image_path: 'asitanojo.jpg', initial: 'あ')

Movie.create(category: 0, title: 'あひるの空', company: 'ディオメディア', year: 2019,
             synopsis: 'バスケットボールでは決して有利ではない小柄な体格の車谷 空。
                        身長を理由にスタメンに選ばれることのなかった空は、高校バスケ部に期待を膨らませて九頭龍高校、通称クズ高に入学。
                        ところがバスケ部はほとんど機能停止状態。とてもバスケをできる環境ではなかった。
                        しかし、空はバスケへの熱量で、クズ高バスケ部メンバーとぶつかり合いながらも、共に成長していく。
                        次々に直面するあらゆる困難に、クズ高バスケ部メンバーはどのように立ち向かって行くのか…！？', image_path: 'ahirunosora.jpg', initial: 'あ')
                        
Movie.create(category: 0, title: '甘城ブリリアントパーク', company: '京都アニメーション', year: 2014,
             synopsis: '謎の美少女転校生・千斗いすずから強引に遊園地デートの誘いを受けた可児江西也。
                        わけもわからず連れて来られたのは、さびれたアトラクション、ダメダメなサービスの日本一残念な遊園地・甘城ブリリアントパーク。
                        その支配人だという“本物の”お姫様・ラティファに引き合わされた西也は、なぜか突然、閉園の危機にあるパークの再建を託されてしまう。
                        そして、そこはただの遊園地ではなく――！？', image_path: 'amaburi.jpg', initial: 'あ')
                        
Movie.create(category: 0, title: 'ISLAND', company: 'feel.', year: 2018,
             synopsis: '本土から遠く離れた海に浮かぶ「浦島」 忘れられつつあるこの島に「タイムトラベラー」を自称するひとりの青年が流れ着く。
                        その青年は、凛音、夏蓮、紗羅という3人の少女たちと出会い、やがて島の未来を変えるべく奔走をはじめる。
                        排他的な因習と数々の謎を秘めた浦島をめぐる青年と少女たちの物語がひも解かれる――。', image_path: 'island.jpg', initial: 'あ')
                        
Movie.create(category: 1, title: '劇場版 コード・ブルー -ドクターヘリ緊急救命-', company: '西浦正記', year: 2018,
             synopsis: '地下鉄トンネル崩落事故から３カ月後、旅立ちの時が迫る藍沢たち。
                        その旅立ちが「別れ」を意味することに気づきながらも、彼らは10年間を共にした互いへの思いを抱えたまま、日々を過ごしていた。
                        しかしそんな彼らの思いに構うことなく、出動要請が入る。
                        成田空港への航空機緊急着陸事故と、東京湾・海ほたるへの巨大フェリー衝突事故という、「空」と「海」を舞台にした未曽有の大事故が連続発生。
                        史上最悪の現場に、彼らはいかに立ち向かうのか。そしてその先に、答えはあるのか―。', image_path: 'codeblue.jpg', initial: 'げ')

Movie.create(category: 1, title: '検察側の罪人', company: '原田眞人', year: 2018,
             synopsis: '都内で発生した殺人事件。犯人は不明。
                        事件を担当する検察官は、東京地検刑事部のエリート検事・最上と、刑事部に配属されてきた駆け出しの検事・沖野。
                        最上は複数いる被疑者の中から、一人の男に狙いを定め、執拗に追い詰めていく。
                        その男・松倉は、過去に時効を迎えてしまった未解決殺人事件の重要参考人であった人物だ。
                        最上を師と仰ぐ沖野は被疑者に自白させるべく取り調べに力を入れるのだが、松倉は犯行を否認し続け、一向に手ごたえが得られない。
                        やがて沖野は、最上の捜査方針に疑問を持ち始める。
                        「最上さんは、松倉を、犯人に仕立て上げようとしているのではないか?」・・・。
                        互いの正義を賭けて対立する二人の検事。彼らの戦いに、待ち受けていた決着とは――。', image_path: 'kensatugawanozainin.jpg', initial: 'け')