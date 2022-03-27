# Build guide

## Parts list


| No. | Patrs | Quantity | remarks | Suppliers | Cost |
|--|--|--|--|--|--|
|番号|名前|数|備考|調達先|参考価格（送料込）|<br>
|1|PCB|1|4X5Macro pad<br>keyboard|[elecrow](https://www.elecrow.com)<br>[JLCPCB](https://jlcpcb.com)<br>[ALLPCB](https://www.allpcb.com)|５枚で10〜20ドル|<br>
||PCB|2|40%splite keyboard|↑|↑|
|2|Switch Plate<br>スイッチプレート|１〜２|Macropadは１枚<br>splite keyboardは２枚|[工房Emerge+](https://www.emergeplus.jp/laser-cutting-service/contact/)<br>[遊舎工房](https://yushakobo.jp)<br>[elecrow](https://www.elecrow.com)|種類による。|
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

### 2 QMK_FIRMWARE
[Here](https://github.com/telzo2000/cool640/tree/main/firmware)

<br>


## Build

### 1 Parts check

Front side（表面）
![](img/img00004.jpg)

Backside（裏面）
![](img/img00005.jpg)

### 2 Diode soldering

Solder the diode on the back side.
<br>
裏面にダイオードの半田付けをします。
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




