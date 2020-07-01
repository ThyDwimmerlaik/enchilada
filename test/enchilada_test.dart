import 'package:flutter_test/flutter_test.dart';

import 'package:enchilada/enchilada.dart';

void main() {
  test('Coder test', () async {
    final widget = CrCoder();
    expect(await widget.sendRequest("https://us-central1-advncd-manknd-internal.cloudfunctions.net/osprey?url=http://localhost/", {
      "foo": "bar"
    }), {
      "foo": ""
    });
  });
}
