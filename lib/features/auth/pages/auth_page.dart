import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';

import '../+state/facade.dart';
import '../+state/model.dart';

abstract class AuthPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new StoreConnector<WithAuthState, AuthFacade>(
        converter: AuthFacade.fromStore, builder: buildContent);
  }

  Widget buildContent(BuildContext context, AuthFacade facade);
}
