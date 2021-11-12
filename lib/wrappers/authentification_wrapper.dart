import 'package:e_commerce_app_flutter/Dashboard/screen/dashboard_screen.dart';
import 'package:e_commerce_app_flutter/wrappers/notification_alert.dart';

import 'package:e_commerce_app_flutter/screens/getting_started/gettingstarted.dart';
import 'package:e_commerce_app_flutter/services/authentification/authentification_service.dart';
import 'package:flutter/material.dart';

class AuthentificationWrapper extends StatelessWidget {
  static const String routeName = "/authentification_wrapper";
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: AuthentificationService().authStateChanges,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return DashboardScreen();
        } else {
          return GettingStartedScreen();
        }
      },
    );
  }
}
