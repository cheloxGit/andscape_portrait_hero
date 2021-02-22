import 'package:flutter/rendering.dart';

void main() {}

class Remote {
  void vUp() {
    print('vUp from Remote');
  }

  void vDown() {
    print('vDown from Remote');
  }
}

abstract class Television implements Remote {
  @override
  void vUp() {
    // TODO: implement vUp
  }
}
