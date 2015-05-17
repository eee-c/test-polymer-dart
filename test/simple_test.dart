library pricing_plans_test;

import 'package:polymer_test_sampler/x_parent.dart';
import 'package:polymer/polymer.dart';
export 'package:polymer/init.dart';

import 'package:test/test.dart';
import 'dart:html';
import 'dart:async';

@whenPolymerReady
void runTests() {
  var _el;

  group("[updates]", (){
    setUp(()=> Polymer.onReady.then((_){
        _el = query('x-parent') as XParent;
        _el.parent_count = 0;
      })
    );

    test('updates the parent', (){
      new Timer(
        new Duration(milliseconds: 1500),
        expectAsync((){
          expect(
            _el.shadowRoot.text,
            contains('Count: 1')
          );
        })
      );
    });

    test("updates the child", (){
      new Timer(
        new Duration(milliseconds: 500),
        expectAsync((){
          expect(
            _el.shadowRoot.query('x-child').shadowRoot.text,
            contains('Count: 1')
          );
        })
      );
    });
  });
}
