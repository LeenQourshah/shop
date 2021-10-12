import 'package:flutter/foundation.dart';

class coinsProvider with ChangeNotifier {
  late int _coins;

  int get coins => _coins;

  setCoins(int coins) {
    _coins = coins;
  }

  modifyCoins(int price) {
    _coins -= price;
    notifyListeners();
  }
}
