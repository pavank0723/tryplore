import 'package:custom_navigation_bar/custom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:tryplore/res/app_colors.dart';
import 'package:tryplore/ui/common/categories_page.dart';
import 'package:tryplore/ui/home_page.dart';
import 'package:tryplore/ui/common/notification_page.dart';
import 'package:tryplore/ui/profile_page.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  List<Widget> page = [
    HomePage(),
    CategoriesPage(),
    NotificationPage(),
    ProfilePage()
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
            // selectedIcon: BottomNavBar(),
            icon: Icon(Icons.home),
            title: Text("Home"),
          ),
          CustomNavigationBarItem(
            // selectedIcon: CategoryPage(),
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
