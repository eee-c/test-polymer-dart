@HtmlImport('x-parent.html')
library polymer_test_sampler.x_parent;

import 'package:polymer/polymer.dart';
import 'dart:async';

import 'x_child.dart';

@CustomTag('x-parent')
class XParent extends PolymerElement {
  @observable int parent_count = 0;

  XParent.created(): super.created() {
    new Timer.periodic(
      new Duration(seconds: 1),
      (_)=> parent_count++
    );
  }
}
