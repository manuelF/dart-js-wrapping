// Copyright (c) 2013, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

library js_wrapping;

import 'dart:async';
import 'dart:collection';
import 'dart:convert';
import 'dart:js';

part 'src/wrapping/convert.dart';
part 'src/wrapping/typed_js_object.dart';
part 'src/wrapping/utils.dart';
part 'src/wrapping/js/date_to_datetime_adapter.dart';
part 'src/wrapping/js/typed_js_array.dart';
part 'src/wrapping/js/typed_js_map.dart';

/// Marker class used to indicate it is serializable to js. If a class is a
/// [Serializable] the `$unsafe` method will be called and the result will be used
/// as value.
abstract class Serializable<T> {
  T get $unsafe;
}