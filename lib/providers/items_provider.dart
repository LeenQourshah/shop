import 'package:flutter/foundation.dart';

class item {
  late String name;
  var price;
}

class itemProvider with ChangeNotifier {
  List<item> _items = [];
  List<item> get items {
    return [..._items];
  }

  void addItem() {
    _items.add(item());
    notifyListeners();
  }
}
