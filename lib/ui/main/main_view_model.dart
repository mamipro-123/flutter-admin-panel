import 'package:flutter/foundation.dart';
import 'package:stacked/stacked.dart';

class MainViewModel extends BaseViewModel {
  bool _isLoading = false;
  bool get isLoading => _isLoading;
  int _currentTabIndex = 0;
  int get currentTabIndex => _currentTabIndex;
  bool _reverse = false;
  bool get reverse => _reverse;

  void setLoading(bool value) {
    _isLoading = value;
    notifyListeners();
  }

  void setTabIndex(int value) {
    if (value < _currentTabIndex) {
      _reverse = true;
    }
    _currentTabIndex = value;
    notifyListeners();
  }
}
