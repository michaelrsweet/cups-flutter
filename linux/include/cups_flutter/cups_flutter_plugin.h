//
// CUPS Linux plugin for Flutter.
//
// Copyright © 2025 by Micharl R Sweet.
//
// Licensed under Apache License v2.0.  See the file "LICENSE" for more
// information.
//

#ifndef FLUTTER_PLUGIN_CUPS_FLUTTER_PLUGIN_H_
#define FLUTTER_PLUGIN_CUPS_FLUTTER_PLUGIN_H_

#include <flutter_linux/flutter_linux.h>

G_BEGIN_DECLS

#ifdef FLUTTER_PLUGIN_IMPL
#define FLUTTER_PLUGIN_EXPORT __attribute__((visibility("default")))
#else
#define FLUTTER_PLUGIN_EXPORT
#endif

typedef struct _CupsFlutterPlugin CupsFlutterPlugin;
typedef struct {
  GObjectClass parent_class;
} CupsFlutterPluginClass;

FLUTTER_PLUGIN_EXPORT GType cups_flutter_plugin_get_type();

FLUTTER_PLUGIN_EXPORT void cups_flutter_plugin_register_with_registrar(
    FlPluginRegistrar* registrar);

G_END_DECLS

#endif  // FLUTTER_PLUGIN_CUPS_FLUTTER_PLUGIN_H_
