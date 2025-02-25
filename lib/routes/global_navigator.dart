import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

///CreateDate: 2024/5/23 17:51
///Author: you
///Description:

class GlobalNavigator extends NavigatorObserver {

  @override
  NavigatorState? get navigator {
    super.navigator;
    return null;
  }

  @override
  void didPop(Route<dynamic> route, Route<dynamic>? previousRoute) {
    //界面退出取消loading动画
    if (EasyLoading.isShow) {
      EasyLoading.dismiss();
    }
    super.didPop(route, previousRoute);
  }

  @override
  void didPush(Route<dynamic> route, Route<dynamic>? previousRoute) {
    //进入新界面取消loading动画
    if (EasyLoading.isShow) {
      EasyLoading.dismiss();
    }
    super.didPush(route, previousRoute);
  }

  @override
  void didRemove(Route route, Route? previousRoute) {
    super.didRemove(route, previousRoute);
  }

}