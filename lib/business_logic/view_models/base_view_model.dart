import 'package:flutter/foundation.dart';
import 'package:template/enum.dart';

class BaseScopedModel extends ChangeNotifier {
  ViewState _state;
  ViewState get state => _state;

  void setState(ViewState newState) {
    _state = newState;
    notifyListeners();
  }
}
