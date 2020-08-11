// You have generated a new plugin project without
// specifying the `--platforms` flag. A plugin project supports no platforms is generated.
// To add platforms, run `flutter create -t plugin --platforms <platforms> .` under the same
// directory. You can also find a detailed instruction on how to add platforms in the `pubspec.yaml` at https://flutter.dev/docs/development/packages-and-plugins/developing-packages#plugin-platforms.

import 'dart:async';
import 'dart:typed_data';

import 'package:flutter/services.dart';

class SecureRandom {
  static const MethodChannel _channel = const MethodChannel('securerandom');

  static Future<Uint8List> generate(int numBytes) async {
    final result = await _channel.invokeMethod('generate', {
      'numBytes': numBytes,
    });
    return result;
  }
}
