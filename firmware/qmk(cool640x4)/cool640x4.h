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
      L04, L05, L06, L07, L08, L40, L50, L60, L70, L80, \
      k14, k15, k16, k17, k18, k41, k51, k61, k71, k81, \
      L14, L15, L16, L17, L18, L41, L51, L61, L71, L81, \
      k24, k25, k26, k27, k28, k42, k52, k62, k72, k82, \
      L24, L25, L26, L27, L28, L42, L52, L62, L72, L82, \
      k34, k35, k36, k37, k38, k43, k53, k63, k73, k83,  \
      L34, L35, L36, L37, L38, L43, L53, L63, L73, L83  \
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
    { k80, k81, k82, k83, KC_NO, KC_NO, KC_NO, KC_NO, KC_NO } ,\
    { KC_NO, KC_NO, KC_NO, KC_NO, L04, L05, L06, L07, L08 }, \
    { KC_NO, KC_NO, KC_NO, KC_NO, L14, L15, L16, L17, L18 }, \
    { KC_NO, KC_NO, KC_NO, KC_NO, L24, L25, L26, L27, L28 }, \
    { KC_NO, KC_NO, KC_NO, KC_NO, k34, k35, k36, k37, k38 }, \
    { L40, L41, L42, L43, KC_NO, KC_NO, KC_NO, KC_NO, KC_NO }, \
    { L50, L51, L52, L53, KC_NO, KC_NO, KC_NO, KC_NO, KC_NO }, \
    { L60, L61, L62, L63, KC_NO, KC_NO, KC_NO, KC_NO, KC_NO }, \
    { L70, L71, L72, L73, KC_NO, KC_NO, KC_NO, KC_NO, KC_NO }, \
    { L80, L81, L82, L83, KC_NO, KC_NO, KC_NO, KC_NO, KC_NO } \
}
