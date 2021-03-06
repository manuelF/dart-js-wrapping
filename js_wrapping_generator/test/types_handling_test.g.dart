// GENERATED CODE - DO NOT MODIFY BY HAND

part of js_wrapping_generator.test.types_handling_test;

// **************************************************************************
// Generator: JsWrappingGenerator
// **************************************************************************

class Color extends JsEnum {
  static final values = <Color>[RED, GREEN, BLUE];
  static final RED = new Color._('RED', context['Color']['RED']);
  static final GREEN = new Color._('GREEN', context['Color']['GREEN']);
  static final BLUE = new Color._('BLUE', context['Color']['BLUE']);

  final String _name;
  Color._(this._name, o) : super.created(o);

  String toString() => 'Color.$_name';

  // dumb code to remove analyzer hint for unused _Color
  _Color _dumbMethod1() => _dumbMethod2();
  _Color _dumbMethod2() => _dumbMethod1();
}

@GeneratedFrom(_A)
class A extends JsInterface {
  A.created(JsObject o) : super.created(o);
  A() : this.created(new JsObject(context['A']));

  void set b(B _b) {
    asJsObject(this)['b'] = __codec0.encode(_b);
  }

  B get b => __codec0.decode(asJsObject(this)['b']);
  void set bs(List<B> _bs) {
    asJsObject(this)['bs'] = __codec1.encode(_bs);
  }

  List<B> get bs => __codec1.decode(asJsObject(this)['bs']);
  void set li(List<int> _li) {
    asJsObject(this)['li'] = __codec2.encode(_li);
  }

  List<int> get li => __codec2.decode(asJsObject(this)['li']);

  String toColorString(Color c) =>
      asJsObject(this).callMethod('toColorString', [__codec4.encode(c)]);
  Color toColor(String s) =>
      __codec4.decode(asJsObject(this).callMethod('toColor', [s]));

  String execute(B f(B b)) =>
      asJsObject(this).callMethod('execute', [__codec5.encode(f)]);

  String execute2(String f(B s, [int i])) =>
      asJsObject(this).callMethod('execute2', [__codec6.encode(f)]);

  BisFunc getBisFunc() =>
      __codec5.decode(asJsObject(this).callMethod('getBisFunc'));

  void set simpleFunc(SimpleFunc _simpleFunc) {
    asJsObject(this)['simpleFunc'] = __codec3.encode(_simpleFunc);
  }

  SimpleFunc get simpleFunc => __codec3.decode(asJsObject(this)['simpleFunc']);

  void executeVoidFunction(void f()) {
    asJsObject(this).callMethod('executeVoidFunction', [__codec7.encode(f)]);
  }
}

@GeneratedFrom(_B)
class B extends JsInterface {
  B.created(JsObject o) : super.created(o);
  B(String v) : this.created(new JsObject(context['B'], [v]));

  String toString() => asJsObject(this).callMethod('toString');
}

/// codec for js_wrapping_generator.test.types_handling_test.B
final __codec0 = new JsInterfaceCodec<B>((o) => new B.created(o));

/// codec for dart.core.List<B>
final __codec1 = new JsListCodec<B>(__codec0);

/// codec for dart.core.List<int>
final __codec2 = new JsListCodec<int>(null);

/// codec for js_wrapping_generator.test.types_handling_test.(int) → String
final __codec3 = new FunctionCodec<Function> /*<(int) → String>*/(
  (f) => f,
  (f) => (p_i) => f is JsFunction ? f.apply([p_i]) : Function.apply(f, [p_i]),
);

/// codec for js_wrapping_generator.test.types_handling_test.Color
final __codec4 = new BiMapCodec<Color, dynamic>(
    new Map<Color, dynamic>.fromIterable(Color.values, value: asJs));

/// codec for js_wrapping_generator.test.types_handling_test.(B) → B
final __codec5 = new FunctionCodec<Function> /*<(B) → B>*/(
  (f) => (p_b) => __codec0.encode(f(__codec0.decode(p_b))),
  (f) => (p_b) => __codec0.decode(f is JsFunction
      ? f.apply([__codec0.encode(p_b)])
      : Function.apply(f, [__codec0.encode(p_b)])),
);

/// codec for js_wrapping_generator.test.types_handling_test.(B, [int]) → String
final __codec6 = new FunctionCodec<Function> /*<(B, [int]) → String>*/(
  (f) => (p_s, [p_i]) => f(__codec0.decode(p_s), p_i),
  (f) => (p_s, [p_i]) => f is JsFunction
      ? f.apply([__codec0.encode(p_s), p_i])
      : Function.apply(f, [__codec0.encode(p_s), p_i]),
);

/// codec for js_wrapping_generator.test.types_handling_test.() → void
final __codec7 = new FunctionCodec<Function> /*<() → void>*/(
  (f) => f,
  (f) => () {
        f is JsFunction ? f.apply([]) : Function.apply(f, []);
      },
);
