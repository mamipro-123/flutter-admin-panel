import 'package:stacked/stacked.dart';

class ProfileViewModel extends BaseViewModel {
  bool _isLoading = false;
  bool get isLoading => _isLoading;

  void setLoading(bool value) {
    _isLoading = value;
    notifyListeners();
  }
}
