import 'dart:js' as js;

import 'package:js_wrapping/generator.dart';
import 'package:js_wrapping/wrapping.dart' as jsw;

class Person extends jsw.TypedJsObject {
  static Person cast(js.JsObject jsObject) => jsObject == null ? null : new Person.fromJsObject(jsObject);
  Person.fromJsObject(js.JsObject jsObject) : super.fromJsObject(jsObject);
  set s1(String value) => $unsafe['s1'] = value;
  void set s2(Person value) {
    $unsafe['s2'] = value;
  }
  void set s3(DateTime value) {
    $unsafe['s3'] = value == null ? null : value is js.Serializable ? value : new jsw.JsDateToDateTimeAdapter(value);
  }
  String get g1 => $unsafe['g1'];
  Person get g2 => Person.cast($unsafe['g2']);
  List<Person> get g3 => jsw.TypedJsArray.castListOfSerializables($unsafe['g3'], Person.cast);
  List<String> get g4 => jsw.TypedJsArray.cast($unsafe['g4']);
  List get g5 => jsw.TypedJsArray.cast($unsafe['g5']);
  DateTime get g6 => jsw.JsDateToDateTimeAdapter.cast($unsafe['g6']);
  String m1() => $unsafe.callMethod('m1');
  void m2() {
    $unsafe.callMethod('m2');
  }
  m3() => $unsafe.callMethod('m3');
  Person m4() => Person.cast($unsafe.callMethod('m4'));
  List<Person> m5() => jsw.TypedJsArray.castListOfSerializables($unsafe.callMethod('m5'), Person.cast);
  void m6(List l) {
    $unsafe.callMethod('m6', [l == null ? null : l is js.Serializable ? l : js.jsify(l)]);
  }
  void m7([List l]) {
    $unsafe.callMethod('m7', [l == null ? null : l is js.Serializable ? l : js.jsify(l)]);
  }
}
