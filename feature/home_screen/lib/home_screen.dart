library home_screen;

import 'package:navigation/navigation.dart';

export 'home_screen.gm.dart';

@AutoRouterConfig.module(replaceInRouteName: 'Screen|Form|Step,Route')
class HomeScreenModule extends $HomeScreenModule {}
