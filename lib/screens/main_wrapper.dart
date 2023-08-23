import 'package:flutter/material.dart';
import 'package:watchstore/components/nav_item.dart';
import 'package:watchstore/gen/assets.gen.dart';
import 'package:watchstore/screens/basket_screen.dart';
import 'package:watchstore/screens/home_screen.dart';
import 'package:watchstore/screens/profile_screen.dart';
import 'package:watchstore/widgets/custom_nav_item.dart';

class MainWrapper extends StatefulWidget {
  const MainWrapper({super.key});

  @override
  State<MainWrapper> createState() => _MainWrapperState();
}

class _MainWrapperState extends State<MainWrapper> {
  //Selected Index
  int selectedIndex = ItemIndex.home;

  //Lsit History Navigation
  final List<int> _historyNavList = [
    ItemIndex.home //def value
  ];

  //Globak Key
  final GlobalKey<NavigatorState> _home_key = GlobalKey();
  final GlobalKey<NavigatorState> _basket_key = GlobalKey();
  final GlobalKey<NavigatorState> _profile_key = GlobalKey();

  //navKey map
  late final _mapKey = {
    ItemIndex.home: _home_key,
    ItemIndex.basket: _basket_key,
    ItemIndex.profile: _profile_key,
  };

  //OnWillPop function
  Future<bool> _onWillPop() async {
    if (_mapKey[selectedIndex]!.currentState!.canPop()) {
      _mapKey[selectedIndex]!.currentState!.pop();
    } else if (_historyNavList.length > 1) {
      setState(() {
        _historyNavList.removeLast();
        selectedIndex = _historyNavList.last;
      });
    }
    return false;
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    var bottomNavSize = size.height * .1;

    return WillPopScope(
      onWillPop: _onWillPop,
      child: Scaffold(
        body: Stack(
          children: [
            Positioned(
              top: 0,
              bottom: bottomNavSize,
              left: 0,
              right: 0,
              child: SizedBox(
                  height: bottomNavSize,
                  child: IndexedStack(
                    index: selectedIndex,
                    children: [
                      //using nested navigation
                      Navigator(
                          key: _home_key,
                          onGenerateRoute: (settings) => MaterialPageRoute(
                              builder: (context) => HomeScreen())),
                      Navigator(
                          key: _basket_key,
                          onGenerateRoute: (settings) => MaterialPageRoute(
                              builder: (context) => const BasketScreen())),
                      Navigator(
                          key: _profile_key,
                          onGenerateRoute: (settings) => MaterialPageRoute(
                              builder: (context) => const ProfileScreen())),

                      //HomeScreen(),
                      // BasketScreen(),
                      // ProfileScreen(),
                    ],
                  )),
            ),
            Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  height: bottomNavSize,
                  color: Colors.white,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CustomNavItem(
                          svgPath: Assets.images.home,
                          navItemText: 'خانه',
                          onTap: () => changeNavItem(ItemIndex.home),
                          isActive: selectedIndex == ItemIndex.home),
                      CustomNavItem(
                          svgPath: Assets.images.basket,
                          navItemText: 'سبد خرید',
                          onTap: () => changeNavItem(ItemIndex.basket),
                          isActive: selectedIndex == ItemIndex.basket),
                      CustomNavItem(
                          svgPath: Assets.images.user,
                          navItemText: 'پروفایل',
                          onTap: () => changeNavItem(ItemIndex.profile),
                          isActive: selectedIndex == ItemIndex.profile),
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }

  void changeNavItem(int index) => setState(() {
        selectedIndex = index;
        _historyNavList.add(index);
      });
}
