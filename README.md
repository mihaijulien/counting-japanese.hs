# counting-japanese.hs

I'm currently learning japanese so I made this app to practice the number counters and some Haskell.

![counting-japanese](demo.gif)

- Build & run

``` shell
stack build
stack exec counting-japanese
stack test
```

## Useful links:

- All of the featured projects: [https://github.com/jtdaugherty/brick](https://github.com/jtdaugherty/brick)
- Hspec: [https://github.com/hspec/hspec-example/tree/main](https://github.com/hspec/hspec-example/tree/main)
- Debugging and testing in Haskell: [https://haskell.dev/article/Debugging_and_testing_in_Haskell_Tips_and_tricks.html](https://haskell.dev/article/Debugging_and_testing_in_Haskell_Tips_and_tricks.html)
- Stack getting started: [https://docs.haskellstack.org/en/stable/tutorial/hello_world_example/](https://docs.haskellstack.org/en/stable/tutorial/hello_world_example/)

**postgresql-simple**:
- [https://begriffs.com/posts/2013-09-14-haskell-postgresql-simple-examples-part_13.html](https://begriffs.com/posts/2013-09-14-haskell-postgresql-simple-examples-part_13.html)
- [https://github.com/begriffs/haskell-postgres-examples/tree/master](https://github.com/begriffs/haskell-postgres-examples/tree/master)
- [https://blog.ocharles.org.uk/blog/posts/2012-12-03-postgresql-simple.html](https://blog.ocharles.org.uk/blog/posts/2012-12-03-postgresql-simple.html)
- [https://github.com/smasuda/haskell-postgresql-simple-example](https://github.com/smasuda/haskell-postgresql-simple-example)

<details>
<summary> Japanese :)</summary>


### Regular Kana

Hiragana

| .   | w   | r   | y   | m   | h   | n   | t   | s   | k   |     |       |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | ----- |
| ん  | わ  | ら  | や  | ま  | は  | な  | た  | さ  | か  | あ  | **a** |
|     |     | り  |     | み  | ひ  | に  | ち  | し  | き  | ぃ  | **i** |
|     |     | る  | ゆ  | む  | ふ  | ぬ  | つ  | す  | く  | う  | **u** |
|     |     | れ  |     | め  | へ  | ね  | て  | せ  | け  | え  | **e** |
|     | を  | ろ  | よ  | も  | ほ  | の  | と  | そ  | こ  | お  | **o** |

Katakana

| .   | w   | r   | y   | m   | h   | n   | t   | s   | k   |     |       |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | ----- |
| ン  | ワ  | ラ  | ヤ  | マ  | ハ  | ナ  | タ  | サ  | カ  | ア  | **a** |
|     |     | リ  |     | ミ  | ヒ  | に  | チ  | シ  | キ  | イ  | **i** |
|     |     | ル  | ユ  | ム  | フ  | ヌ  | ツ  | ス  | ク  | ウ  | **u** |
|     |     | レ  |     | メ  | ヘ  | ネ  | テ  | セ  | ケ  | エ  | **e** |
|     | ヲ  | ロ  | ヨ  | モ  | ホ  | ノ  | ト  | ソ  | コ  | オ  | **o** |

Items

    かばん (bag)
    地[ち]図[ず] (map)
    パスポート (passport)
    スマホ (smartphone)
    切[き]符[っぷ] (ticket)
    財布[さいふ] (wallet)
    時計[とけい] (watch, clock)
    鍵[かぎ] (key)
    眼鏡[めがね] (glasses)
    カメラ (camera)
    ボールペン (ballpoint pen)
    ノート (notebook)

Clothing

    靴[くつ] (shoes)
    コート (coat)
    帽[ぼう]子[し] (hat)
    シャツ (shirt)

Food and Beverages

    ケーキ (cake)
    ピザ (pizza)
    ラーメン (ramen)
    カレー (curry)
    ご飯[はん] (rice, meal)
    寿[す]司[し] (sushi)
    お茶[ちゃ] (tea)
    パン (bread)
    牛乳[ぎゅうにゅう] (milk)
    ジュース (juice)
    コーヒー (coffee)
    ビール (beer)
    ワイン (wine)

Professions

    人[ひと] (person, people)
    先[せん]生[せい] (teacher, teachers)
    学[がく]生[せい] (student, students)
    弁[べん]護[ご]士[し] (lawyer, lawyers)
    医[い]者[しゃ] (doctor, doctors)
    エンジニア (engineer)
    大[だい]学[がく]生[せい] (college student)
    看[かん]護[ご]師[し] (nurse)
    会[かい]社[しゃ]員[いん] (office worker)

Locations

    まち (town, city)
    とし (cities, city)

Places

    病院[びょういん] (hospital)
    郵便局[ゆうびんきょく] (post office)
    図書館[としょかん] (library)
    地[じ]下[か]鉄[てつ] (subway)
    空[くう]港[こう] (airport)
    駅[えき] (train station)
    バスてい (bus stop)
    デパート (department store)
    ホテル (hotel)
    コンビニ (convenience store)
    大[だい]学[がく] (university, college)

Nations and Nationalities

    フランス (France) → フランス人[じん] (French)
    ドイツ (Germany) → ドイツ人[じん] (German)
    中国[ちゅうごく] (China) → 中国人[ちゅうごくじん] (Chinese)
    韓国[かんこく] (South Korea) → 韓国人[かんこくじん] (Korean)
    ロシア (Russia) → ロシア人[じん] (Russian)
    ブラジル (Brazil) → ブラジル人[じん] (Brazilian)
    イギリス (Britain) → イギリス人[じん] (British)
    日[に]本[ほん] (Japan) → 日[に]本[ほん]人[じん] (Japanese)
    カナダ (Canada) → カナダ人[じん] (Canadian)
    アメリカ (USA) → アメリカ人[じん] (American)

Media

    映[えい]画[が] (movies)
    テレビ (TV)

</details>
