import 'package:flutter/cupertino.dart';
import 'package:ptogenius/enums/business_type.dart';

class ConfigProvider with ChangeNotifier {
  BusinessType _currentBusinessType = BusinessType.Small;

  BusinessType get currentBusinessType => _currentBusinessType;

  void setUserBusinessType(type) {
    _currentBusinessType = type;
    notifyListeners();
  }

  final Map<BusinessType, List<int>> _fullBusinessProjectList = {
    BusinessType.Small: [
      4,
    ],
    BusinessType.Medium: [
      1,
      4,
      5,
    ],
    BusinessType.Enterprise: [
      1,
      2,
      3,
      4,
      5,
    ],
  };

  Map<BusinessType, List<int>> get fullBusinessProjectList =>
      _fullBusinessProjectList;

  List<int> get currentBusinessList =>
      _fullBusinessProjectList[_currentBusinessType] ?? [];

  void setProjectList(int id) {
    if (currentBusinessList.contains(id)) {
      _fullBusinessProjectList[_currentBusinessType]!.remove(id);
    } else {
      _fullBusinessProjectList[_currentBusinessType] = [
        ...currentBusinessList,
        id
      ];
    }
    notifyListeners();
  }
}
