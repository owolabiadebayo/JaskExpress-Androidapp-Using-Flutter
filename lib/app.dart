import 'package:e_commerce_app_flutter/wrappers/authentification_wrapper.dart';
import 'package:flutter/material.dart';
import 'constants.dart';
import 'theme.dart';
import 'package:get/get.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        title: appName,
        debugShowCheckedModeBanner: false,
        theme: theme(),
        home: AuthentificationWrapper()
        //home: AuthentificationWrapper(),
        );
  }
}
