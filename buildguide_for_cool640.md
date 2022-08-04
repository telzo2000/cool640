# Build guide

## Parts list


| No. | Patrs | Quantity | remarks | Suppliers | Cost |
|--|--|--|--|--|--|
|番号|名前|数|備考|調達先|参考価格（送料込）|<br>
|1|PCB|1|4X5Macro pad<br>keyboard|[elecrow](https://www.elecrow.com)<br>[JLCPCB](https://jlcpcb.com)<br>[ALLPCB](https://www.allpcb.com)|５枚で10〜20ドル|<br>
||PCB|2|40%splite keyboard|↑|↑|
|2-1|Switch Plate<br>スイッチプレート|１〜２|Macropadは１枚<br>splite keyboardは２枚|[工房Emerge+](https://www.emergeplus.jp/laser-cutting-service/contact/)<br>[遊舎工房](https://yushakobo.jp)<br>[elecrow](https://www.elecrow.com)|種類による。|
|2-2|Cover Plate<br>カバープレート|１～２|↑|↑|↑|
|2-3|Bottom Plate<br>ボトムプレート|１～２|↑|↑|↑|
|3|M2screw<br>M2ネジ|4X1〜2|4mm<br>CoverPlateで使用|DIYショップなど|10本で100円程度|
|4|M2screw<br>M2ネジ|4X1〜2|3mm|↑|↑|
|5A|M2screw<br>M2ネジ|4X1〜2|8mm<br>MXスイッチ使用時|↑|↑|
|5B|M2screw<br>M2ネジ|4X1〜2|6mm<br>chocスッチ使用時|↑|↑|
|6A|M2spacer<br>M2スペーサー|8X1〜2|3mmメス-メス<br>MXスイッチ使用時|[ヒロスギネット](https://www.hirosugi-net.co.jp/shop/c/c10/)<br>[遊舎工房](https://yushakobo.jp)|20本で800円程度|
|6B|M2spacer<br>M2スペーサー|4X1〜2|3mmメス-メス<br>chocスイッチ使用時|[ヒロスギネット](https://www.hirosugi-net.co.jp/shop/c/c10/)<br>[遊舎工房](https://yushakobo.jp)|20本で800円程度|
|6|M2spacer<br>M2スペーサー|2X1〜2|6mmメス-メス<br>CoverPlateで使用|[ヒロスギネット](https://www.hirosugi-net.co.jp/shop/c/c10/)<br>[遊舎工房](https://yushakobo.jp)|20本で800円程度|
|7|pro micro|1〜2|ピンヘッダも別途購入|[遊舎工房](https://yushakobo.jp)<br>[Talp Keyboard](https://talpkeyboard.net)<br>[Daily Craft Keyboard](https://shop.dailycraft.jp)等|価格変動中|
||Raspberry Pi Pico|1〜2|ピンヘッダも別途購入|[遊舎工房](https://yushakobo.jp)等|１個550円|
|8|Swith socket<br>スイッチソケット|20X1〜2|cherry MX互換|[遊舎工房](https://yushakobo.jp)<br>[Talp Keyboard](https://talpkeyboard.net)<br>[Daily Craft Keyboard](https://shop.dailycraft.jp)等|10個で165円程度|
||Swith socket<br>スイッチソケット|20X1〜2|choc互換|[遊舎工房](https://yushakobo.jp)<br>[Talp Keyboard](https://talpkeyboard.net)<br>[Daily Craft Keyboard](https://shop.dailycraft.jp)等|10個で165円程度|
|9|Diode<br>ダイオード|20X1〜2|リードタイプでもSMDでも可|[遊舎工房](https://yushakobo.jp)<br>[Talp Keyboard](https://talpkeyboard.net)<br>[Daily Craft Keyboard](https://shop.dailycraft.jp)等|100個で220円程度から|
|10|タクトスイッチ|1〜2|２本足のもの|[遊舎工房](https://yushakobo.jp)<br>[Talp Keyboard](https://talpkeyboard.net)<br>[Daily Craft Keyboard](https://shop.dailycraft.jp)等|１個11円程度|
|11|TRRSジャック|1〜2|MJ-4PP-9|[遊舎工房](https://yushakobo.jp)<br>[Talp Keyboard](https://talpkeyboard.net)<br>[Daily Craft Keyboard](https://shop.dailycraft.jp)等|１個55円|

この他に、TRRSケーブル、USBケーブル、キーキャップ等が必要です。

## Firmware

### 1 PRK_FIRMWARE

[Here](https://github.com/telzo2000/cool640/tree/main/firmware)

<br>
For those who are introducing PRK for the first time.
<br>
初めてのPRKを導入する方に
<br>
Only Japanese tweets.
<br>
日本語ツイートのみです。
<br>

https://twitter.com/0002ozlet/status/1512535045957111810


### 2 QMK_FIRMWARE
[Here](https://github.com/telzo2000/cool640/tree/main/firmware)

<br>


## Build 1(PCB only)

### 1 Parts check

Front side（表面）

![](img/img00004.jpg)

Back side（裏面）

![](img/img00005.jpg)

### 2 Diode soldering

Solder the diode on the back side.
<br>
裏面にダイオードのハンダ付けをします。
<br>

![](img/img00006.jpg)

There are lead type and SMD diodes.
<br>
ダイオードはリードタイプか、SMDがあります。
<br>
Here, we will explain the lead type soldering.
<br>
ここでは、リードタイプのハンダ付けの説明をします。
<br>
However, those who adopt the choc switch should use SMD diodes.
<br>
ただし、chocスイッチを採用する人は、SMDのダイオードを使用してください。
<br>

![](img/img00007.jpg)

Use a lead bender to bend the legs of the diode.
<br>
リードベンダーを使い、ダイオードの足を曲げます。
<br>

![](img/img00008.jpg)

![](img/img00009.jpg)

Insert the diode into the board.
<br>
ダイオードを基板に挿しこみます。
<br>

![](img/img00010.jpg)

Please refer to the image and pay attention to the orientation of the diode.
<br>
画像を参考にして、ダイオードの向きに注意してください。
<br>

![](img/img00011.jpg)

Secure the diode with masking tape, then face up.
<br>
マスキングテープでダイオードを固定してから、表面を上にします。
<br>
Solder the protruding legs.
<br>
はみ出ている足部分に、ハンダ付けをします。
<br>
After soldering, use nippers to cut off the protruding legs.
<br>
はんだ付けが終わったら、はみ出ている足をニッパーで切り取ってください。
<br>

[８倍速　Diodeハンダ付け動画](https://youtu.be/Yaodh2-XxV4)


<br>
<br>

### 3 Soldering switch sockets

Solder the switch sockets on the back side.
<br>
裏面にスイッチソケットのハンダ付けをします。
<br>
cool640 is compatible with both choc and cherry MX switches.
<br>
cool640はchocスイッチとcherryMXスイッチの両方に対応しています。
<br>
Both can be installed.
<br>
両方を取り付けることが可能です。
<br>
Here, solder the cherryMX switch.
<br>
ここでは、cherryMXスイッチのハンダ付けを行います。
<br>
Place the switch socket so that the letters MX are hidden.
<br>
MXという文字が隠れるように、スイッチソケットを乗せてください。
<br>
That is the correct switch socket orientation.
<br>
それが正しいスイッチソケットの向きになります。
<br>
When using a choc switch, place the switch socket so that the letters choc are hidden.
<br>
chocスイッチの時は、chocという文字が隠れるように、スイッチソケットを乗せてください。
<br>

![](img/img00013.jpg)

Apply solder to both pads.
<br>
両方のパッドにハンダを盛ります。
<br>
Place the switch socket and fix it with a warm soldering iron while melting the solder.
<br>
スイッチソケットを乗せて、温めたハンダゴテで、ハンダを溶かしながら、固定します。
<br>
You can make it easier by working while holding it with tweezers.
<br>
ピンセットで押さえながら、作業をすると楽にできます。
<br>

![](img/img00012.jpg)


[８倍速　Switch socketハンダ付け動画](https://youtu.be/E__mHvmIXQo)

<br><br>

### 4 Soldering reset switch & TRRS jack 

Insert the reset switch on the surface.
<br>
表面にリセットスイッチを挿しこみます。
<br>
Solder the legs of the reset switch from the back.
<br>
裏面からリセットスイッチの足をハンダ付けします。
<br>
Solder the TRRS jack in the same way near the reset switch.
<br>
TRRSジャックは、リセットスイッチの近くに同じようにハンダ付けします。

![](img/img00014.jpg)


[８倍速　Reset switch,TRRS jackハンダ付け動画](https://youtu.be/3gEbExaOAv4)

<br><br>


### 5　Choice of Pro micro or Raspberry Pi Pico

You can run cool640 in either Pro micro or Raspberry Pi Pico.
<br>
cool640をpro microかラズパイピコのどちらか一方で動作させることができます。
<br>
＜case 1＞
<br>
When you choose Pro micro, place it on the left side of the TRRS jack.
<br>
pro microを選んだ時、TRRSジャックの左側にpro microを取り付けてください。
<br>


![](img/img00015.jpg)


Use the conthrough to fix the pro micro with the side with the parts facing down.
<br>
pro microの部品のある面を下向きに、コンスルーを使い、固定してください。
<br>


![](img/img00016.jpg)


Pay attention to the orientation of the conthrough.
<br>
コンスルーの向きに注意してください。
<br>

If the USB port touches the PCB, cut off the part on the left side of the PCB.
<br>
もし、USB端子がPCBに接触するならば、PCBの左側の一部を切りとってください。
<br>

![](img/img00017.jpg)

＜case 2＞
<br>
When you choose Raspberry Pi Pico, place it on the right side of the TRRS jack.
<br>
ラズパイピコを選んだ時、TRRSジャックの右側にラズパイピコを取り付けてください。

Use the conthrough to fix the Raspberry Pi Pico with the side with the parts facing down.
<br>
ラズパイピコの部品のある面を下向きに、コンスルーを使い、固定してください。
<br>



Pay attention to the orientation of the conthrough.
<br>
コンスルーの向きに注意してください。
<br>

If the USB port touches the PCB, cut off the part on the right side of the PCB.
<br>
もし、USB端子がPCBに接触するならば、PCBの右側の一部を切りとってください。
<br>

<br>

### 6　Test

Please write the firmware and check the operation.
<br>
ファームウェアを書き込んで、動作確認をしてください。
<br>

Install a switch or measure continuity with tweezers, etc.
<br>
スイッチを取り付けるか、ピンセット等で導通をはかるかを行います。
<br>



### PRK_FIRMWARE

[Here](https://github.com/telzo2000/cool640/tree/main/firmware)

<br>

### QMK_FIRMWARE
[Here](https://github.com/telzo2000/cool640/tree/main/firmware)

<br>
<br>

### 7 Installation of key switch

Attach your favorite key switch.
<br>
好きなキースイッチを取り付けてください。
<br>

![](img/img00018.jpg)

<br>
<br>

### 8 Installation of key cap

Attach your favorite key cap.
<br>
好きなキーキャップを取り付けてください。
<br>

![](img/img00019.jpg)

<br>
If you like, attach a rubber cushion to the back and you're done.
<br>
お好みで裏面にラバークッションを取り付けたら、完成です。
<br>
<br>
<br>

## Build 2(Acrylic sandwich mount case)

![](img/img00020.jpg)

After 1 ~ 6 of build1, please do the next step.
<br>
build1の1~6の後、次の工程をしてください。
<br>

### 1 Installation of cover plate

Prepare a cover plate, M2 spacer 6mm（x２）, and M2 screw 3mm（x４）.
<br>
カバープレート、M2スペーサー6mm（２個）、M2ネジ3mm（４本）を用意します。
<br>
Screw the spacer to the cover plate in the same orientation.
<br>
カバープレートに同じ向きで、スペーサーをネジで固定します。
<br>
Then use the remaining screws to attach the cover plate to the PCB.
<br>
次に、残りのネジを使い、カバープレートをPCBに取り付けます。
<br>
There is an orientation of the cover plate, so it is good to check it once before starting work.
<br>
カバープレートの向きがあり、作業前に一度、重ねて確認すると良いです。
<br>
<br>

### 2-1 Installation of switch plate（choc switch）

Prepare a switch plate, M2 spacer 3 mm（x４）, and M2 screw 6 mm（x４）.
<br>
スイッチプレート、M2スペーサー３mm（４本）、M2ネジ６mm（４本）を用意します。
<br>
Fix the screws in 4 places.
<br>
ネジを４箇所、固定します。
<br>
Insert the screws in the order of the switch plate and the PCB, and fix them with spacers on the back of the PCB.
<br>
ネジはスイッチプレート、PCBの順でさしこみ、PCBの裏面でスペーサーで固定します。
<br>

<br>

### 2-2 Installation of switch plate（cherry MX switch）

Prepare a switch plate, M2 spacer 3 mm（x８）, and M2 screw 8 mm（x４）.
<br>
スイッチプレート、M2スペーサー３mm（８本）、M2ネジ８mm（４本）を用意します。
<br>
Fix the screws in 4 places.
<br>
ネジを４箇所、固定します。
<br>
Insert the switch plate into the screw and fix it with a spacer.
<br>
ネジはスイッチプレートをさしこみ、スペーサーで固定します。
<br>
Next, insert the switch plate into the PCB and secure it with a spacer on the back of the PCB.
<br>
次に、スイッチプレートをPCBにさしこみ、PCBの裏面でスペーサーで固定します。
<br>

### 3 Installation of bottom plate 

Prepare the bottom plate and M2 ３mm screws（x４）.
<br>
ボトムプレート、M２ネジ３mm（４本）を用意します。
<br>
Place the bottom plate according to the spacer on the back of the PCB and fix it with screws.
<br>
PCB裏面にあるスペーサーに合わせて、ボトムプレートをのせて、ネジで固定します。
<br>
<br>
From here, proceed with step 7 of build1.
<br>
ここからは、build１の７の工程を進めてください。
<br>

Right:Raspberry Pi Pico & choc switch
<br>
Left :Pro micro & cherry MX switch

![](img/img00021.jpg)

From the side

![](img/img00022.jpg)

<br>

![](img/img00023.jpg)

Have a fun selfmade keyboard life!
<br>
楽しい自作キーボード生活を!

