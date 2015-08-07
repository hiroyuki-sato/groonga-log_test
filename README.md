
## 環境

* OS: OSX 10.10.4
* Groonga: 5.0.6 (brew install)


```
groonga --version
groonga 5.0.6 [darwin14.4.0,x86_64,utf8,match-escalation-threshold=0,nfkc,mecab,msgpack,mruby,onigmo,zlib,kqueue]

configure options: < '--prefix=/usr/local/Cellar/groonga/5.0.6' '--with-zlib' '--disable-zeromq' '--enable-mruby' '--without-libstemmer' '--with-mecab' 'CC=clang' 'CXX=clang++' 'PKG_CONFIG_PATH=/usr/local/opt/pcre/lib/pkgconfig:/usr/local/opt/msgpack/lib/pkgconfig:/usr/local/opt/openssl/lib/pkgconfig' 'PKG_CONFIG_LIBDIR=/usr/lib/pkgconfig:/usr/local/Library/ENV/pkgconfig/10.10'>
```

## 問題点

ログにログ欄記載のようなエラーが段階的に出て、最終的にデータはインサートされる。

## 設定

```
make
./server.sh
```

### データ投入

```
groonga_test.csv
```

## 削除

```
make clean
```

## ログ

### コマンド実行

```
ruby groonga.rb
Idx:1 OK
Idx:2 OK
Idx:3 OK
Idx:4 OK
Idx:5 OK
...
Idx:500 OK
Idx:501 OK
```

### ログ

```
2015-08-07 09:47:05.832215|n| grn_init
2015-08-07 09:47:05.850284|n| RLIMIT_NOFILE(4096,4096)
2015-08-07 09:47:15.214315|n| thread start (0/1)
2015-08-07 09:47:15.217872|e| ignored invalid char('=') at
2015-08-07 09:47:15.217897|e| [{"name"=
2015-08-07 09:47:15.217903|e|         ^
2015-08-07 09:47:15.217908|e| ignored invalid char('>') at
2015-08-07 09:47:15.217913|e| [{"name"=>
2015-08-07 09:47:15.217918|e|          ^
2015-08-07 09:47:15.217923|e| ignored invalid char('=') at
2015-08-07 09:47:15.217928|e| [{"name"=>"名前", "kana"=
2015-08-07 09:47:15.217933|e|                           ^
2015-08-07 09:47:15.217938|e| ignored invalid char('>') at
2015-08-07 09:47:15.217942|e| [{"name"=>"名前", "kana"=>
2015-08-07 09:47:15.217947|e|                            ^
2015-08-07 09:47:15.217952|e| ignored invalid char('=') at
2015-08-07 09:47:15.217957|e| [{"name"=>"名前", "kana"=>"ふりがな", "addr"=
2015-08-07 09:47:15.217961|e|                                                   ^
2015-08-07 09:47:15.217969|e| ignored invalid char('>') at
2015-08-07 09:47:15.217974|e| [{"name"=>"名前", "kana"=>"ふりがな", "addr"=>
2015-08-07 09:47:15.217978|e|                                                    ^
2015-08-07 09:47:15.217983|e| ignored invalid char('=') at
2015-08-07 09:47:15.217987|e| [{"name"=>"名前", "kana"=>"ふりがな", "addr"=>"アドレス", "sex"=
2015-08-07 09:47:15.217991|e|                                                                          ^
2015-08-07 09:47:15.217996|e| ignored invalid char('>') at
2015-08-07 09:47:15.218000|e| [{"name"=>"名前", "kana"=>"ふりがな", "addr"=>"アドレス", "sex"=>
2015-08-07 09:47:15.218004|e|                                                                           ^
2015-08-07 09:47:15.218009|e| ignored invalid char('=') at
2015-08-07 09:47:15.218013|e| [{"name"=>"名前", "kana"=>"ふりがな", "addr"=>"アドレス", "sex"=>"性別", "age"=
2015-08-07 09:47:15.218018|e|                                                                                           ^
2015-08-07 09:47:15.218022|e| ignored invalid char('>') at
2015-08-07 09:47:15.218026|e| [{"name"=>"名前", "kana"=>"ふりがな", "addr"=>"アドレス", "sex"=>"性別", "age"=>
2015-08-07 09:47:15.218030|e|                                                                                            ^
2015-08-07 09:47:15.218035|e| ignored invalid char('=') at
2015-08-07 09:47:15.218039|e| [{"name"=>"名前", "kana"=>"ふりがな", "addr"=>"アドレス", "sex"=>"性別", "age"=>"年齢", "birthday"=
2015-08-07 09:47:15.218044|e|                                                                                                                 ^
2015-08-07 09:47:15.218048|e| ignored invalid char('>') at
2015-08-07 09:47:15.218053|e| [{"name"=>"名前", "kana"=>"ふりがな", "addr"=>"アドレス", "sex"=>"性別", "age"=>"年齢", "birthday"=>
2015-08-07 09:47:15.218057|e|                                                                                                                  ^
2015-08-07 09:47:15.218062|e| ignored invalid char('=') at
2015-08-07 09:47:15.218066|e| [{"name"=>"名前", "kana"=>"ふりがな", "addr"=>"アドレス", "sex"=>"性別", "age"=>"年齢", "birthday"=>"誕生日", "marriage"=
2015-08-07 09:47:15.218070|e|                                                                                                                                          ^
2015-08-07 09:47:15.218075|e| ignored invalid char('>') at
2015-08-07 09:47:15.218079|e| [{"name"=>"名前", "kana"=>"ふりがな", "addr"=>"アドレス", "sex"=>"性別", "age"=>"年齢", "birthday"=>"誕生日", "marriage"=>
2015-08-07 09:47:15.218083|e|                                                                                                                                           ^
2015-08-07 09:47:15.218088|e| ignored invalid char('=') at
2015-08-07 09:47:15.218092|e| [{"name"=>"名前", "kana"=>"ふりがな", "addr"=>"アドレス", "sex"=>"性別", "age"=>"年齢", "birthday"=>"誕生日", "marriage"=>"婚姻", "prefecture"=
2015-08-07 09:47:15.218113|e|                                                                                                                                                                  ^
2015-08-07 09:47:15.218118|e| ignored invalid char('>') at
2015-08-07 09:47:15.218123|e| [{"name"=>"名前", "kana"=>"ふりがな", "addr"=>"アドレス", "sex"=>"性別", "age"=>"年齢", "birthday"=>"誕生日", "marriage"=>"婚姻", "prefecture"=>
2015-08-07 09:47:15.218127|e|                                                                                                                                                                   ^
2015-08-07 09:47:15.218132|e| ignored invalid char('=') at
2015-08-07 09:47:15.218136|e| [{"name"=>"名前", "kana"=>"ふりがな", "addr"=>"アドレス", "sex"=>"性別", "age"=>"年齢", "birthday"=>"誕生日", "marriage"=>"婚姻", "prefecture"=>"都道府県", "mobile"=
2015-08-07 09:47:15.218140|e|                                                                                                                                                                                            ^
2015-08-07 09:47:15.218145|e| ignored invalid char('>') at
2015-08-07 09:47:15.218149|e| [{"name"=>"名前", "kana"=>"ふりがな", "addr"=>"アドレス", "sex"=>"性別", "age"=>"年齢", "birthday"=>"誕生日", "marriage"=>"婚姻", "prefecture"=>"都道府県", "mobile"=>
2015-08-07 09:47:15.218153|e|                                                                                                                                                                                             ^
2015-08-07 09:47:15.218158|e| ignored invalid char('=') at
2015-08-07 09:47:15.218162|e| [{"name"=>"名前", "kana"=>"ふりがな", "addr"=>"アドレス", "sex"=>"性別", "age"=>"年齢", "birthday"=>"誕生日", "marriage"=>"婚姻", "prefecture"=>"都道府県", "mobile"=>"携帯", "mobile_type"=
2015-08-07 09:47:15.218166|e|                                                                                                                                                                                                                     ^
2015-08-07 09:47:15.218171|e| ignored invalid char('>') at
2015-08-07 09:47:15.218175|e| [{"name"=>"名前", "kana"=>"ふりがな", "addr"=>"アドレス", "sex"=>"性別", "age"=>"年齢", "birthday"=>"誕生日", "marriage"=>"婚姻", "prefecture"=>"都道府県", "mobile"=>"携帯", "mobile_type"=>
2015-08-07 09:47:15.218179|e|                                                                                                                                                                                                                      ^
2015-08-07 09:47:15.218184|e| ignored invalid char('=') at
2015-08-07 09:47:15.218188|e| [{"name"=>"名前", "kana"=>"ふりがな", "addr"=>"アドレス", "sex"=>"性別", "age"=>"年齢", "birthday"=>"誕生日", "marriage"=>"婚姻", "prefecture"=>"都道府県", "mobile"=>"携帯", "mobile_type"=>"キャリア", "carry"=
2015-08-07 09:47:15.218192|e|                                                                                                                                                                                                                                              ^
2015-08-07 09:47:15.218197|e| ignored invalid char('>') at
2015-08-07 09:47:15.218201|e| [{"name"=>"名前", "kana"=>"ふりがな", "addr"=>"アドレス", "sex"=>"性別", "age"=>"年齢", "birthday"=>"誕生日", "marriage"=>"婚姻", "prefecture"=>"都道府県", "mobile"=>"携帯", "mobile_type"=>"キャリア", "carry"=>
2015-08-07 09:47:15.218205|e|                                                                                                                                                                                                                                               ^
2015-08-07 09:47:15.218217|e| ignored invalid char('=') at
2015-08-07 09:47:15.218223|e|  "_key"=
2015-08-07 09:47:15.218227|e|        ^
2015-08-07 09:47:15.218232|e| ignored invalid char('>') at
2015-08-07 09:47:15.218243|e|  "_key"=>
2015-08-07 09:47:15.218248|e|         ^
2015-08-07 09:47:15.765168|e| ignored invalid char('=') at
2015-08-07 09:47:15.765190|e| [{"name"=
2015-08-07 09:47:15.765196|e|         ^
2015-08-07 09:47:15.765201|e| ignored invalid char('>') at
```

### 出力

```json

echo "select --table Data" | groonga database/test.db | jq .
[
  [
    0,
    1438909077.88233,
    0.00543999671936035
  ],
  [
    [
      [
        501
      ],
      [
        [
          "_id",
          "UInt32"
        ],
        [
          "_key",
          "ShortText"
        ],
        [
          "addr",
          "ShortText"
        ],
        [
          "age",
          "ShortText"
        ],
        [
          "birthday",
          "ShortText"
        ],
        [
          "carry",
          "ShortText"
        ],
        [
          "kana",
          "ShortText"
        ],
        [
          "marriage",
          "ShortText"
        ],
        [
          "mobile",
          "ShortText"
        ],
        [
          "mobile_type",
          "ShortText"
        ],
        [
          "name",
          "ShortText"
        ],
        [
          "prefecture",
          "ShortText"
        ],
        [
          "sex",
          "ShortText"
        ]
      ],
      [
        1,
        "1",
        "アドレス",
        "年齢",
        "誕生日",
        "カレーの食べ方",
        "ふりがな",
        "婚姻",
        "携帯",
        "キャリア",
        "名前",
        "都道府県",
        "性別"
      ],
      [
        2,
        "2",
        "tahara_mina@example.com",
        "35",
        "1979/8/25",
        "ぶっかけ・別口派",
        "たはら みな",
        "未婚",
        "090-3554-6247",
        "ドコモ",
        "田原 美菜",
        "大阪府",
        "女"
      ],
      [
        3,
        "3",
        "komine_haruka@example.com",
        "20",
        "1995/7/6",
        "左ルー・せき止め派",
        "こみね はるか",
        "未婚",
        "080-6298-3392",
        "au",
        "小峰 遥",
        "神奈川県",
        "女"
      ],
      [
        4,
        "4",
        "moriguchi_koutarou@example.com",
        "31",
        "1983/9/22",
        "左ルー・せき止め派",
        "もりぐち こうたろう",
        "未婚",
        "090-6687- 187",
        "ドコモ",
        "森口 孝太郎",
        "神奈川県",
        "男"
      ],
      [
        5,
        "5",
        "kameyama_mao@example.com",
        "37",
        "1978/1/2",
        "左ルー・せき止め派",
        "かめやま まお",
        "未婚",
        "090-1937-4174",
        "ドコモ",
        "亀山 麻緒",
        "福島県",
        "女"
      ],
      [
        6,
        "6",
        "hashino_sayuri@example.com",
        "59",
        "1956/2/23",
        "ぶっかけ・ナン派",
        "はしの さゆり",
        "既婚",
        "080-7211-4216",
        "ドコモ",
        "はしの 小百合",
        "栃木県",
        "女"
      ],
      [
        7,
        "7",
        "irie_kyouko@example.com",
        "23",
        "1992/6/3",
        "手前ルー・せき止め派",
        "いりえ きょうこ",
        "未婚",
        "090-5960-4968",
        "ドコモ",
        "入江 京子",
        "東京都",
        "女"
      ],
      [
        8,
        "8",
        "igarashi_hana@example.com",
        "35",
        "1980/4/29",
        "右ルー・混ぜ混ぜ派",
        "いがらし はな",
        "既婚",
        "080-5761-3825",
        "ドコモ",
        "五十嵐 花",
        "鳥取県",
        "女"
      ],
      [
        9,
        "9",
        "yanagi_tarou@example.com",
        "48",
        "1967/2/5",
        "左ルー・混ぜ混ぜ派",
        "やなぎ たろう",
        "既婚",
        "080-4179-1161",
        "ドコモ",
        "柳 太朗",
        "福井県",
        "男"
      ],
      [
        10,
        "10",
        "umeda_ken@example.com",
        "59",
        "1955/8/27",
        "ぶっかけ・ルー攻め派",
        "うめだ けん",
        "既婚",
        "090- 780-6289",
        "ドコモ",
        "梅田 健",
        "埼玉県",
        "男"
      ]
    ]
  ]
]
```
