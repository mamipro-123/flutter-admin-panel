import 'package:flutter/foundation.dart';
import 'package:stacked/stacked.dart';

class NotificationsViewModel extends BaseViewModel {
  bool _isLoading = false;
  bool get isLoading => _isLoading;

  void setLoading(bool value) {
    _isLoading = value;
    notifyListeners();
  }
}
