library dashboard;

import 'package:e_commerce_app_flutter/constants.dart';
import 'package:e_commerce_app_flutter/screens/cart/cart_screen.dart';
import 'package:e_commerce_app_flutter/screens/home/components/home_screen_drawer.dart';
import 'package:e_commerce_app_flutter/screens/home/home_screen.dart';
import 'package:e_commerce_app_flutter/screens/my_orders/my_orders_screen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

// // binding
// import 'package:e_commerce_app_flutter/Dashboard/binding/dashboard_binding.dart';

// controller
import 'package:e_commerce_app_flutter/Dashboard/controllers/dashboard_controller.dart';

// model

// component

class DashboardScreen extends GetView<DashboardController> {
  @override
  Widget build(BuildContext context) {
    PersistentTabController controller;

    controller = PersistentTabController(initialIndex: 0);

    return PersistentTabView(
      context,
      controller: controller,
      screens: _buildScreens(),
      items: _buildNavBarsItems(),
      backgroundColor: Colors.white, // Default is Colors.white.
      decoration: NavBarDecoration(
        borderRadius: BorderRadius.circular(10.0),
        colorBehindNavBar: Colors.white,
      ),
      itemAnimationProperties: ItemAnimationProperties(
        // Navigation Bar's items animation properties.
        duration: Duration(milliseconds: 200),
        curve: Curves.ease,
      ),
      screenTransitionAnimation: ScreenTransitionAnimation(
        // Screen transition animation on change of selected tab.
        animateTabTransition: true,
        curve: Curves.ease,
        duration: Duration(milliseconds: 200),
      ),
      navBarHeight: 70,
      navBarStyle: NavBarStyle.style10,
    );
  }

  List<Widget> _buildScreens() {
    return [
      HomeScreen(),
      CartScreen(),
      MyOrdersScreen(),
      HomeScreenDrawer(),
    ];
  }

  List<PersistentBottomNavBarItem> _buildNavBarsItems() {
    return [
      _navbarItem(iconData: FontAwesomeIcons.thLarge, title: "Explore"),
      _navbarItem(iconData: FontAwesomeIcons.shoppingCart, title: "Cart"),
      _navbarItem(iconData: FontAwesomeIcons.shoppingBag, title: "Orders"),
      _navbarItem(iconData: FontAwesomeIcons.userAlt, title: "Settings"),
    ];
  }

  PersistentBottomNavBarItem _navbarItem({
    IconData iconData,
    String title,
  }) {
    return PersistentBottomNavBarItem(
      icon: Icon(iconData, size: 22),
      title: (title),
      activeColorPrimary: Color.fromRGBO(246, 246, 246, 1),
      inactiveColorPrimary: Color.fromRGBO(187, 193, 202, 1),
      activeColorSecondary: kPrimaryColor,
      textStyle: TextStyle(fontWeight: FontWeight.bold),
    );
  }
}
