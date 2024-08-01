library profile;

import 'package:navigation/navigation.dart';

export 'profile.gm.dart';
export 'src/profile/profile.dart';
export 'src/profile_dialog/profile_dialog.dart';

@AutoRouterConfig.module(replaceInRouteName: 'Screen|Form|Step,Route')
class ProfileModule extends $ProfileModule {}
