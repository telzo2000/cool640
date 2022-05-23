// Copyright 2022 m.ki (@telzo2000)
// SPDX-License-Identifier: GPL-2.0-or-later

#pragma once

#include "quantum.h"

/* This is a shortcut to help you visually see your layout.
 *
 * The first section contains all of the arguments representing the physical
 * layout of the board and position of the keys.
 *
 * The second converts the arguments into a two-dimensional array which
 * represents the switch matrix.
 */
#define LAYOUT( \
      k04, k05, k06, k07, k08, k40, k50, k60, k70, k80, \
      k14, k15, k16, k17, k18, k41, k51, k61, k71, k81, \
      k24, k25, k26, k27, k28, k42, k52, k62, k72, k82, \
      k34, k35, k36, k37, k38, k43, k53, k63, k73, k83  \
      ) \
      { \
    { KC_NO, KC_NO, KC_NO, KC_NO, k04, k05, k06, k07, k08 }, \
    { KC_NO, KC_NO, KC_NO, KC_NO, k14, k15, k16, k17, k18 }, \
    { KC_NO, KC_NO, KC_NO, KC_NO, k24, k25, k26, k27, k28 }, \
    { KC_NO, KC_NO, KC_NO, KC_NO, k34, k35, k36, k37, k38 }, \
    { k40, k41, k42, k43, KC_NO, KC_NO, KC_NO, KC_NO, KC_NO }, \
    { k50, k51, k52, k53, KC_NO, KC_NO, KC_NO, KC_NO, KC_NO }, \
    { k60, k61, k62, k63, KC_NO, KC_NO, KC_NO, KC_NO, KC_NO }, \
    { k70, k71, k72, k73, KC_NO, KC_NO, KC_NO, KC_NO, KC_NO }, \
    { k80, k81, k82, k83, KC_NO, KC_NO, KC_NO, KC_NO, KC_NO } \
}
