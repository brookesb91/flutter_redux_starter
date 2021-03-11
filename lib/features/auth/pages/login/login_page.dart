import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';

import '../../+state/model.dart';
import 'login_facade.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new StoreConnector<WithAuthState, LoginFacade>(
        converter: LoginFacade.fromStore, builder: buildContent);
  }

  Widget buildContent(BuildContext context, LoginFacade facade) {}
}
