# Initialize a Keyboard
kbd = Keyboard.new
kbd.split = true # This should happen before Keyboard#init_pins.
# Initialize GPIO assign
kbd.init_pins(
  [ 3, 2, 6, 4, 15, 14, 10, 7, 5 ],            # row0, row1,... respectively
  [ 3, 2, 6, 4, 15, 14, 10, 7, 5 ]    # col0, col1,... respectively
)
#keyboard.row_pins = (board.GP3, board.GP2, board.GP6,board.GP4)
#keyboard.col_pins = (board.GP15, board.GP14, board.GP10, board.GP7)
#cool640 half PCB ver.1.0
kbd.set_anchor(:left)

kbd.split_style = :right_side_flipped_split
kbd.init_matrix_pins(
    [
      [[3,15],[3,14],[3,10],[3,7],[3,5],[15,3],[14,3],[10,3],[7,3],[5,3]],
      [[2,15],[2,14],[2,10],[2,7],[2,5],[15,2],[14,2],[10,2],[7,2],[5,2]],
      [[6,15],[6,14],[6,10],[6,7],[6,5],[15,6],[14,6],[10,6],[7,6],[5,6]],
      [[4,15],[4,14],[4,10],[4,7],[4,5],[15,4],[14,4],[10,4],[7,4],[5,4]],
    ]
)
# default layer should be added at first 
# keymap<default>
# F1   F2   F3  F4    ESC  Q   W   E   R   T   |   Y   U   I   O    P   BS   F1   F2   F3   F4   
# F5   F6   F7  F8    TAB  A   S   D   F   G   |   H   J   K   L    -   ENT  F5   F6   F7   F8 
# F9   F10  F11 F12   SFT  Z   X   C   V   B   |   N   M   ,   .    /   SFT  F9   F10  F11  F12
# LEFT DOWN UP  RIGHT CTRL GUI ALT SPC SPC L1  |   L2  SPC SPC CTRL GUI ALT  LEFT DOWN UP   RIGHT  
kbd.add_layer :default, %i[
  KC_F1      KC_F2    KC_F3     KC_F4     KC_ESCAPE  KC_Q    KC_W     KC_E        KC_R      KC_T      KC_Y      KC_U     KC_I     KC_O     KC_P      KC_BSPACE KC_F1   KC_F2    KC_F3    KC_F4 
  KC_F5      KC_F6    KC_F7     KC_F8     KC_TAB     KC_A    KC_S     KC_D        KC_F      KC_G      KC_H      KC_J     KC_K     KC_L     KC_MINUS  KC_ENTER  KC_F5   KC_F6    KC_F7    KC_F8
  KC_F9      KC_F10   KC_F11    KC_F12    KC_LSFT    KC_Z    KC_X     KC_C        KC_V      KC_B      KC_N      KC_M     KC_COMMA KC_DOT   KC_SLASSH KC_LSFT   KC_F9   KC_F10   KC_F11   KC_F12        
  KC_LEFT    KC_DOWN  KC_UP     KC_RIGHT  KC_LCTL    KC_LGUI KC_LALT  KC_SPACE    KC_SPACE  RAISE_SPC LOWER_SPC KC_SPACE KC_SPACE KC_LCTL  KC_LGUI   KC_LALT   KC_LEFT KC_DOWN  KC_UP    KC_RIGHT         
]
kbd.add_layer :raise, %i[
    KC_1      KC_2    KC_3     KC_4     KC_ESCAPE  KC_Q    KC_W     KC_E        KC_R      KC_T      KC_Y      KC_U     KC_I     KC_O     KC_P      KC_BSPACE KC_F1   KC_F2    KC_F3    KC_F4 
    KC_5      KC_6    KC_7     KC_8     KC_TAB     KC_A    KC_S     KC_D        KC_F      KC_G      KC_H      KC_J     KC_K     KC_L     KC_MINUS  KC_ENTER  KC_F5   KC_F6    KC_F7    KC_F8
    KC_9      KC_0    KC_LBRC  KC_RBRC  KC_LSFT    KC_Z    KC_X     KC_C        KC_V      KC_B      KC_N      KC_M     KC_COMMA KC_DOT   KC_SLASSH KC_LSFT   KC_F9   KC_F10   KC_F11   KC_F12        
    KC_LEFT   KC_DOWN KC_UP    KC_RIGHT KC_LCTL    KC_LGUI KC_LALT  KC_SPACE    KC_SPACE  RAISE_SPC LOWER_SPC KC_SPACE KC_SPACE KC_LCTL  KC_LGUI   KC_LALT   KC_LEFT KC_DOWN  KC_UP    KC_RIGHT       
]
kbd.add_layer :lower, %i[
    KC_F1      KC_F2    KC_F3     KC_F4     KC_ESCAPE  KC_Q    KC_W     KC_E        KC_R      KC_T      KC_Y      KC_U     KC_I     KC_O     KC_P      KC_BSPACE KC_F1   KC_F2    KC_F3    KC_F4 
    KC_F5      KC_F6    KC_F7     KC_F8     KC_TAB     KC_A    KC_S     KC_D        KC_F      KC_G      KC_H      KC_J     KC_K     KC_L     KC_MINUS  KC_ENTER  KC_F5   KC_F6    KC_F7    KC_F8
    KC_F9      KC_F10   KC_F11    KC_F12    KC_LSFT    KC_Z    KC_X     KC_C        KC_V      KC_B      KC_N      KC_M     KC_COMMA KC_DOT   KC_SLASSH KC_LSFT   KC_F9   KC_F10   KC_F11   KC_F12        
    KC_LEFT    KC_DOWN  KC_UP     KC_RIGHT  KC_LCTL    KC_LGUI KC_LALT  KC_SPACE    KC_SPACE  RAISE_SPC LOWER_SPC KC_SPACE KC_SPACE KC_LCTL  KC_LGUI   KC_LALT   KC_LEFT KC_DOWN  KC_UP    KC_RIGHT       
]

#                   Your custom     Keycode or             Keycode (only modifiers)      Release time      Re-push time
#                   key name        Array of Keycode       or Layer Symbol to be held    threshold(ms)     threshold(ms)
#                                   or Proc                or Proc which will run        to consider as    to consider as
#                                   when you click         while you keep press          `click the key`   `hold the key`
kbd.define_mode_key :ALT_Q,       [ :KC_Q,                 :KC_LALT,                     150,              150]
kbd.define_mode_key :GUI_X,       [ :KC_X,                 :KC_LGUI,                     150,              150 ]
kbd.define_mode_key :RAISE_SPC,   [ :KC_SPACE,             :raise,                       150,              250 ]
kbd.define_mode_key :LOWER_SPC,   [ :KC_SPACE,             :lower,                       150,              250 ]

rgb = RGB.new(
  13,    # pin number
  36,    # size of underglow pixel
  0,   # size of backlight pixel
  true # 32bit data will be sent to a pixel if true while 24bit if false
)
rgb.effect     = :breath
rgb.speed      = 31  # 1-31  / default: 22
rgb.hue        = 10  # 0-100 / default: 0
rgb.saturation = 100 # 0-100 / default: 100
rgb.max_value  = 10  # 1-31  / default: 13

kbd.append rgb # `kbd` is an instance of Keyboard class that should be newed in advance

kbd.start!
