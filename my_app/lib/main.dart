import 'package:flame/components/component.dart';
import 'package:flame/components/mixins/tapable.dart';
import 'package:flutter/cupertino.dart';

class TapableComponent extends PositionComponent with Tapable {

  // update and render omitted

  @override
  void onTapUp(TapUpDetails details) {
    print("tap up");
  }

  @override
  void onTapDown(TapDownDetails details) {
    print("tap down");
  }

  @override
  void onTapCancel() {
    print("tap cancel");
  }

  noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}