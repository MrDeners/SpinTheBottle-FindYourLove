library profile_alert_dialog;

import 'package:navigation/navigation.dart';

export 'profile_alert_dialog.gm.dart';
export 'src/ui/profile_alert_dialog_screen.dart';

@AutoRouterConfig.module(replaceInRouteName: 'Screen|Form|Step,Route')
class ProfileAlertDialogModule extends $ProfileAlertDialogModule {}
