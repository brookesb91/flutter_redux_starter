import 'package:flutter/material.dart';

import 'pages/login_page.dart';

Map<String, Widget Function(BuildContext)> authRouter = {
  // '/activate': (_) => ActivatePage(),
  '/login': (_) => LoginPage(),
  // '/recover': (_) => RecoverPage(),
  // '/reset': (_) => ResetPage()
};
