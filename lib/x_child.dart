library polymer_test_sampler.x_child;

import 'package:polymer/polymer.dart';

@CustomTag('x-child')
class XChild extends PolymerElement {
  @published int count = 0;
  XChild.created(): super.created();

  countChanged(old, value) {
    print('Child saw: ${old} -> ${value}');
  }
}
