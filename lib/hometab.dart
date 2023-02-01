import 'package:custom_navigation_bar/custom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:tryplore/categoriestab.dart';
import 'package:tryplore/my_home_page.dart';
import 'package:tryplore/notificationtab.dart';
import 'package:tryplore/profiletab.dart';
import '../res/app_colors.dart';

class HomeTab extends StatefulWidget {
  const HomeTab({Key? key}) : super(key: key);

  @override
  State<HomeTab> createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  List<Widget> page = [
    MyHomePage(),
    CategoriesTab(),
    NotificationTab(),
    ProfileTab()
  ];
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
            // if (_currentIndex == 2 || _currentIndex == 3) {
            //   print('I am here');
            //   Navigator.push(
            //     context,
            //     MaterialPageRoute(
            //         builder: (context) => push[_currentIndex - 2]),
            //   );
            // }
          });
        },
        iconSize: 30.0,
        selectedColor: AppColors.primary,
        strokeColor: AppColors.greyLightest,
        unSelectedColor: AppColors.primaryLight,
        backgroundColor: AppColors.greyLightest,
        items: [
          CustomNavigationBarItem(
            // selectedIcon: HomeTab(),
            icon: Icon(Icons.home),
            title: Text("Home"),
          ),
          CustomNavigationBarItem(
            // selectedIcon: CategoriesTab(),
            icon: Icon(Icons.category),
            title: Text("Categories"),
          ),
          CustomNavigationBarItem(
            // selectedIcon: OffersTab(),
            icon: Icon(Icons.notifications),
            title: Text("Notification"),
          ),
          CustomNavigationBarItem(
            // selectedIcon: ProfileTab(),
            icon: Icon(Icons.account_circle),
            title: Text("Profile"),
          ),
        ],

        // isFloating: true,
      ),
      body: page[_currentIndex],
    );
  }
}
