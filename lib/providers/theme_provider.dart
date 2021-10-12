import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';

TextStyle oldStyle = TextStyle(
  fontSize: 30,
  fontFamily: 'AmaticSC',
  fontWeight: FontWeight.bold,
);

TextStyle newStyle = TextStyle(
  fontSize: 20,
  fontFamily: 'verdanab',
  fontWeight: FontWeight.bold,
);

class themeProvider with ChangeNotifier {
  // late TextStyle _textStyle = textTheme;
  bool _newText = true;
  bool get newText => _newText;

  themeProvider() {
    _newText = true;
  }

  toggleTheme() {
    _newText = !_newText;
    notifyListeners();
  }
}
