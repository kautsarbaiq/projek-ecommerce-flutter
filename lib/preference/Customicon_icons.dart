// Place fonts/Customicon.ttf in your fonts/ directory and
// add the following to your pubspec.yaml
// flutter:
//   fonts:
//    - family: Customicon
//      fonts:
//       - asset: fonts/Customicon.ttf
import 'package:flutter/widgets.dart';

class Customicon {
  Customicon._();

  static const String _fontFamily = 'Customicon';

  static const IconData filter = IconData(0xe901, fontFamily: _fontFamily);
  static const IconData heart = IconData(0xe900, fontFamily: _fontFamily);
  static const IconData cart = IconData(0xe905, fontFamily: _fontFamily);
  static const IconData menu = IconData(0xe906, fontFamily: _fontFamily);
  static const IconData search = IconData(0xe907, fontFamily: _fontFamily);
}
