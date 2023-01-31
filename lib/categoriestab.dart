import 'package:flutter/material.dart';

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
                color: Colors.blue,
              ),
              child: Text(
                'Profile',
                style: TextStyle(
                  color: Colors.white,
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
        title: Text('Categories'),
        actions: [
          Icon(Icons.search),
          SizedBox(
            width: 25,
          ),
          Icon(Icons.favorite),
          SizedBox(
            width: 25,
          ),
          Icon(Icons.shopping_cart),
          SizedBox(
            width: 10,
          ),
          IconButton(
            icon: Icon(Icons.location_on_outlined),
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
