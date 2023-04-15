/* This file is part of the MicroPython project, http://micropython.org/
 * The MIT License (MIT)
 * Copyright (c) 2022-2023 Damien P. George
 */

// Include common MicroPython embed configuration.
#include <port/mpconfigport_common.h>

// Use the minimal starting configuration (disables all optional features).
#define MICROPY_CONFIG_ROM_LEVEL                (MICROPY_CONFIG_ROM_LEVEL_MINIMUM)

// MicroPython configuration.
#define MICROPY_ENABLE_COMPILER                 (1)
#define MICROPY_ENABLE_GC                       (1)
#define MICROPY_PY_GC                           (1)

// Fine control over Python builtins, classes, modules, etc.
// #define MICROPY_PY_ASYNC_AWAIT            (0)
// #define MICROPY_PY_BUILTINS_SET           (0)
// #define MICROPY_PY_ATTRTUPLE              (0)
// #define MICROPY_PY_COLLECTIONS            (0)
// #define MICROPY_PY_MATH                   (0)
// #define MICROPY_PY_IO                     (0)
// #define MICROPY_PY_STRUCT                 (0)
