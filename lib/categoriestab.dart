import 'package:flutter/material.dart';
import 'package:tryplore/res/app_colors.dart';

class CategoriesTab extends StatefulWidget {
  // String pincode;
  CategoriesTab({
    Key? key,
  }) : super(key: key);

  @override
  State<CategoriesTab> createState() => _CategoriesTabState();
}

class _CategoriesTabState extends State<CategoriesTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: const <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                  color: AppColors.greyLightest
              ),
              child: Text(
                'Profile',
                style: TextStyle(
                  color: AppColors.primary,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.card_travel),
              title: Text('My Orders'),
            ),
            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text('Profile'),
            ),
            ListTile(
              leading: Icon(Icons.wifi_sharp),
              title: Text('Wish list'),
            ),
            ListTile(
              leading: Icon(Icons.question_answer),
              title: Text('FAQ'),
            ),
            ListTile(
              leading: Icon(Icons.contact_phone_outlined),
              title: Text('Contact us'),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        iconTheme: IconThemeData(
          size: 24,
          color: AppColors.primary,//change color on your need
        ),
        backgroundColor: AppColors.greyLightest,
        title: Text('Categories',style: TextStyle(
            color: AppColors.primary
        ),),
        actions: [
          // Icon(Icons.search),
          // SizedBox(
          //   width: 25,
          // ),
          Icon(Icons.favorite,color: AppColors.primary),
          SizedBox(
            width: 25,
          ),
          Icon(Icons.shopping_cart,color: AppColors.primary),
          SizedBox(
            width: 10,
          ),
          IconButton(
            icon: Icon(Icons.location_on_outlined,color: AppColors.primary),
            onPressed: () {
              // showDialog(
              //     context: context,
              //     builder: (_) => AlertDialog(
              //           title: Text('Enter Pincode'),
              //           content: TextField(
              //             onChanged: (value) {
              //               widget.pincode = value.toString();
              //             },
              //             keyboardType: TextInputType.number,
              //             decoration: InputDecoration(
              //               hintText: widget.pincode == '0'
              //                   ? 'Pincode'
              //                   : widget.pincode,
              //             ),
              //           ),
              //           actions: [
              //             TextButton(
              //                 style: TextButton.styleFrom(
              //                   backgroundColor: Colors.blue,
              //                   primary: Colors.white,
              //                   minimumSize: Size(350, 45),
              //                 ),
              //                 onPressed: () {
              //                   Navigator.pop(context);
              //                 },
              //                 child: Text('Submit'))
              //           ],
              //         ));
            },
          ),
          SizedBox(
            width: 10,
          ),
        ],
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 10,
            ),
            Image.network(
                'https://couponswala.com/blog/wp-content/uploads/2022/06/hm-men-clothing-min-1-696x392.png'),
            SizedBox(
              height: 10,
            ),
            Image.network(
                'https://couponswala.com/blog/wp-content/uploads/2022/06/hm-men-clothing-min-1-696x392.png'),
            SizedBox(
              height: 10,
            ),
            Image.network(
                'https://couponswala.com/blog/wp-content/uploads/2022/06/hm-men-clothing-min-1-696x392.png'),
            SizedBox(
              height: 10,
            ),
            Image.network(
                'https://couponswala.com/blog/wp-content/uploads/2022/06/hm-men-clothing-min-1-696x392.png'),
            SizedBox(
              height: 10,
            ),
            Image.network(
                'https://couponswala.com/blog/wp-content/uploads/2022/06/hm-men-clothing-min-1-696x392.png'),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      )),
    );
  }
}
