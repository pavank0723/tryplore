import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:tryplore/models/category_items.dart';
import 'package:tryplore/pages/mens_page.dart';
import 'package:tryplore/pages/common/offers_page.dart';
import 'package:tryplore/pages/profile_page.dart';
import 'package:badges/badges.dart';
import 'package:tryplore/res/app_colors.dart';
import 'package:tryplore/res/app_images.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String pincode = '0';
  List<Widget> push = [OfferPage(), ProfilePage()];
  int _currentIndex = 0;
  List<String> images = [
    'https://kwabey.com/images/moon-knight-black-tshirt/360/1700.jpg',
    'https://kwabey.com/images/mood-of-the-day-white-tshirt/360/1695.jpg',
    'https://kwabey.com/images/never-quit-white-half-sleeves-tshirt-for-men/360/267.jpg',
    'https://kwabey.com/images/mood-of-the-day-white-tshirt/360/1695.jpg',
    'https://kwabey.com/images/never-quit-white-half-sleeves-tshirt-for-men/360/267.jpg',
  ];
  List<CategoryItems> category = [
    CategoryItems(imgLabel: AppImages.picCategory1, name: 'Offers'),
    CategoryItems(imgLabel: AppImages.picCategory2, name: 'Men'),
    CategoryItems(imgLabel: AppImages.picCategory3, name: 'Women'),
    CategoryItems(imgLabel: AppImages.picCategory4, name: 'Kids'),
    // CategoryItems(imgLabel: 'assets/4.jpg', name: 'Beauty'),
    // CategoryItems(imgLabel: 'assets/1.jpg', name: 'Footwear'),
    // CategoryItems(imgLabel: 'assets/2.jpg', name: 'Home'),
    // CategoryItems(imgLabel: 'assets/3.jpg', name: 'Accessories'),
    // CategoryItems(imgLabel: 'assets/4.jpg', name: 'Jwellery'),
  ];
  final CarouselController _controller = CarouselController();
  int _current = 0;
  // bool showScroll = true;
  @override
  Widget build(BuildContext context) {
    List<String> list = [
      'https://kwabey.com/images/banners/540/1583.jpg',
      'https://kwabey.com/images/banners/540/1586.jpg',
      'https://kwabey.com/images/offer-banners/540/1596.jpg',
    ];
    return Scaffold(
      //  CustomNavigationBar(

      //   iconSize: 30.0,
      //   selectedColor: Color(0xff040307),
      //   strokeColor: Color(0x30040307),
      //   unSelectedColor: Color(0xffacacac),
      //   backgroundColor: Colors.white,

      //   items: [
      //     CustomNavigationBarItem(
      //       selectedIcon: HomeTab(),
      //       icon: Icon(Icons.home),
      //       title: Text("Home"),
      //     ),
      //     CustomNavigationBarItem(
      //       selectedIcon: CategoriesTab(),
      //       icon: Icon(Icons.category),
      //       title: Text("CategoryItems"),
      //     ),
      //     CustomNavigationBarItem(
      //       selectedIcon: OfferPage(),
      //       icon: Icon(Icons.lightbulb_outline),
      //       title: Text("Offers"),
      //     ),
      //     CustomNavigationBarItem(
      //       selectedIcon: ProfilePage(),
      //       icon: Icon(Icons.account_circle),
      //       title: Text("Profile"),
      //     ),
      //   ],
      //   currentIndex: _currentIndex,
      //   onTap: (index) {
      //     setState(() {
      //       _currentIndex = index;
      //     });
      //   },
      // ),

      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: const <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: AppColors.greyLightest,
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
      // appBar: AppBar(
      // bottom: PreferredSize(
      //       preferredSize: const Size.fromHeight(48.0),
      //       child: Container(

      //       ),
      //     ),

      //   // floating: true,
      //   //           snap: true,

      //   title: Text('Tryplore'),
      //   actions: [
      //     Icon(Icons.search),
      //     SizedBox(
      //       width: 20,
      //     ),
      //     Icon(Icons.notifications),
      //     SizedBox(
      //       width: 20,
      //     ),
      //     Icon(Icons.favorite),
      //     SizedBox(
      //       width: 20,
      //     ),
      //     Icon(Icons.badge),
      //     SizedBox(
      //       width: 20,
      //     ),
      //   ],
      // ),

      body: NestedScrollView(
          floatHeaderSlivers: true,
          headerSliverBuilder: (BuildContext context,
                  bool innerBoxIsScrolled) =>
              [
                SliverAppBar(
                  iconTheme: IconThemeData(
                    size: 24,
                    color: AppColors.primary,//change color on your need
                  ),
                  backgroundColor: AppColors.greyLightest,
                  floating: true,
                  snap: true,
                  // pinned: true,
                  title: Image.asset(AppImages.picLogo,width: 90,),
                  actions: [
                    // Icon(Icons.search,color: AppColors.primary),
                    // SizedBox(
                    //   width: 25,
                    // ),
                    Badge(
                      position: BadgePosition(top: 2, end: -10),
                      badgeContent: Text('3',style: TextStyle(
                          color: AppColors.greyLightest
                      ),),
                      child: Icon(Icons.favorite,color: AppColors.primary),
                    ),
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
                        showDialog(
                            context: context,
                            builder: (_) => AlertDialog(
                                  title: Text(
                                      'Enter pincode to see Try & Buy stores to order.'),
                                  content: TextField(
                                    onChanged: (value) {
                                      pincode = value.toString();
                                    },
                                    // onSubmitted: (value) {
                                    //   print(pincode);
                                    //   setState(() {
                                    //     print(pincode);
                                    //     pincode = value.toString();
                                    //     print(pincode);
                                    //   });
                                    // },
                                    keyboardType: TextInputType.number,
                                    decoration: InputDecoration(
                                      hintText:
                                          pincode == '0' ? 'Pincode' : pincode,
                                    ),
                                  ),
                                  actions: [
                                    TextButton(
                                      style: TextButton.styleFrom(
                                        backgroundColor: Colors.blue,
                                        primary: Colors.black,
                                        minimumSize: Size(350, 45),
                                      ),
                                      onPressed: () {
                                        if (pincode.length != 6) {
                                          return;
                                        } else {
                                          Navigator.pop(context);
                                        }
                                      },
                                      child: Text('Check'),
                                    )
                                  ],
                                ));
                      },
                    ),
                    SizedBox(
                      width: 10,
                    ),
                  ],

                  bottom: PreferredSize(
                      preferredSize: const Size.fromHeight(81.0),
                      child: Container(
                          // height: 70,
                          height: 80,
                          color: Colors.white,
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    if (category[0].name.toString() == 'Men') {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => MensPage(
                                                  pincode: pincode,
                                                )),
                                      );
                                    }
                                    if (category[0].name.toString() == 'Offers') {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => OfferPage()),
                                      );
                                      // Navigator.push(
                                      //   context,
                                      //   MaterialPageRoute(
                                      //       builder: (context) =>
                                      //           AppliancesCategoryListView()),
                                      // );
                                    }
                                    if (category[0].name.toString() ==
                                        'Fashion') {
                                      // Navigator.push(
                                      //   context,
                                      //   MaterialPageRoute(
                                      //       builder: (context) =>
                                      //           FashionCategoriesView()),
                                      // );
                                    }
                                    if (category[0].name.toString() ==
                                        'Nutritions') {
                                      // Navigator.push(
                                      //   context,
                                      //   MaterialPageRoute(
                                      //       builder: (context) =>
                                      //           NutritionCategoryListView()),
                                      // );
                                    }
                                    if (category[0].name.toString() ==
                                        'Furniture') {
                                      // Navigator.push(
                                      //   context,
                                      //   MaterialPageRoute(
                                      //       builder: (context) =>
                                      //           FurnitureCategoryView()),
                                      // );
                                    }
                                    if (category[0].name.toString() ==
                                        'Electronics') {
                                      // Navigator.push(
                                      //   context,
                                      //   MaterialPageRoute(
                                      //       builder: (context) =>
                                      //           ElectronicCategoryView()),
                                      // );
                                    }
                                    if (category[0].name.toString() == 'Beauty') {
                                      // Navigator.push(
                                      //   context,
                                      //   MaterialPageRoute(
                                      //       builder: (context) =>
                                      //           BeautyCategoryList()),
                                      // );
                                    }
                                    if (category[0].name.toString() ==
                                        'Jwellery') {
                                      // Navigator.push(
                                      //   context,
                                      //   MaterialPageRoute(
                                      //       builder: (context) =>
                                      //           ArtificialJwelleryCategoryListView()),
                                      // );
                                    }
                                  },
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 20, vertical: 7),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        // SvgPicture.asset(category[0].imgLabel.toString()),
                                        Flexible(
                                          flex: 5,
                                          child: Image(
                                            image: AssetImage(
                                                category[0].imgLabel.toString()),
                                            height: 45,
                                          ),
                                        ),
                                        Flexible(
                                            flex: 2,
                                            child: Text(
                                                category[0].name.toString())),
                                      ],
                                    ),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    if (category[1].name.toString() == 'Men') {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => MensPage(
                                                  pincode: pincode,
                                                )),
                                      );
                                    }
                                  },
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 20, vertical: 7),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        // SvgPicture.asset(category[0].imgLabel.toString()),
                                        Flexible(
                                          flex: 5,
                                          child: Image(
                                            image: AssetImage(
                                                category[1].imgLabel.toString()),
                                            height: 45,
                                          ),
                                        ),
                                        Flexible(
                                            flex: 2,
                                            child: Text(
                                                category[1].name.toString())),
                                      ],
                                    ),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    if (category[2].name.toString() == 'Men') {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => MensPage(
                                                  pincode: pincode,
                                                )),
                                      );
                                    }
                                  },
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 20, vertical: 7),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        // SvgPicture.asset(category[0].imgLabel.toString()),
                                        Flexible(
                                          flex: 5,
                                          child: Image(
                                            image: AssetImage(
                                                category[2].imgLabel.toString()),
                                            height: 45,
                                          ),
                                        ),
                                        Flexible(
                                            flex: 2,
                                            child: Text(
                                                category[2].name.toString())),
                                      ],
                                    ),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    if (category[3].name.toString() == 'Men') {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => MensPage(
                                                  pincode: pincode,
                                                )),
                                      );
                                    }
                                  },
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 20, vertical: 7),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        // SvgPicture.asset(category[0].imgLabel.toString()),
                                        Flexible(
                                          flex: 5,
                                          child: Image(
                                            image: AssetImage(
                                                category[3].imgLabel.toString()),
                                            height: 45,
                                          ),
                                        ),
                                        Flexible(
                                            flex: 2,
                                            child: Text(
                                                category[3].name.toString())),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                          // ListView.builder(
                          //   scrollDirection: Axis.horizontal,
                          //   itemCount: 4,
                          //   physics: BouncingScrollPhysics(),
                          //   itemBuilder: (ctx, index) {
                          //     return GestureDetector(
                          //       onTap: () {
                          //         if (category[index].name.toString() == 'Men') {
                          //           Navigator.push(
                          //             context,
                          //             MaterialPageRoute(
                          //                 builder: (context) => MensPage(
                          //                       pincode: pincode,
                          //                     )),
                          //           );
                          //         }
                          //         if (category[index].name.toString() ==
                          //             'Offers') {
                          //           Navigator.push(
                          //             context,
                          //             MaterialPageRoute(
                          //                 builder: (context) => OfferPage()),
                          //           );
                          //           // Navigator.push(
                          //           //   context,
                          //           //   MaterialPageRoute(
                          //           //       builder: (context) =>
                          //           //           AppliancesCategoryListView()),
                          //           // );
                          //         }
                          //         if (category[index].name.toString() ==
                          //             'Fashion') {
                          //           // Navigator.push(
                          //           //   context,
                          //           //   MaterialPageRoute(
                          //           //       builder: (context) =>
                          //           //           FashionCategoriesView()),
                          //           // );
                          //         }
                          //         if (category[index].name.toString() ==
                          //             'Nutritions') {
                          //           // Navigator.push(
                          //           //   context,
                          //           //   MaterialPageRoute(
                          //           //       builder: (context) =>
                          //           //           NutritionCategoryListView()),
                          //           // );
                          //         }
                          //         if (category[index].name.toString() ==
                          //             'Furniture') {
                          //           // Navigator.push(
                          //           //   context,
                          //           //   MaterialPageRoute(
                          //           //       builder: (context) =>
                          //           //           FurnitureCategoryView()),
                          //           // );
                          //         }
                          //         if (category[index].name.toString() ==
                          //             'Electronics') {
                          //           // Navigator.push(
                          //           //   context,
                          //           //   MaterialPageRoute(
                          //           //       builder: (context) =>
                          //           //           ElectronicCategoryView()),
                          //           // );
                          //         }
                          //         if (category[index].name.toString() ==
                          //             'Beauty') {
                          //           // Navigator.push(
                          //           //   context,
                          //           //   MaterialPageRoute(
                          //           //       builder: (context) =>
                          //           //           BeautyCategoryList()),
                          //           // );
                          //         }
                          //         if (category[index].name.toString() ==
                          //             'Jwellery') {
                          //           // Navigator.push(
                          //           //   context,
                          //           //   MaterialPageRoute(
                          //           //       builder: (context) =>
                          //           //           ArtificialJwelleryCategoryListView()),
                          //           // );
                          //         }
                          //       },
                          //       child: Padding(
                          //         padding: EdgeInsets.symmetric(
                          //             horizontal: 20, vertical: 7),
                          //         child: Column(
                          //           mainAxisAlignment:
                          //               MainAxisAlignment.spaceBetween,
                          //           children: [
                          //             // SvgPicture.asset(category[index].imgLabel.toString()),
                          //             Flexible(
                          //               flex: 5,
                          //               child: Image(
                          //                 image: AssetImage(category[index]
                          //                     .imgLabel
                          //                     .toString()),
                          //                 height: 45,
                          //               ),
                          //             ),
                          //             Flexible(
                          //                 flex: 2,
                          //                 child: Text(
                          //                     category[index].name.toString())),
                          //           ],
                          //         ),
                          //       ),
                          //     );
                          //   },
                          // ),

                          )),

                  // bottom: TabBar(),
                ),
              ],
          body: _currentIndex == 0
              ? Column(
                  children: [
                    // showScroll
                    //     ? Container(
                    //         // height: 70,
                    //         height: 80,
                    //         color: Colors.white,
                    //         child: ListView.builder(
                    //           physics: BouncingScrollPhysics(),
                    //           itemBuilder: (ctx, index) {
                    //             return GestureDetector(
                    //               onTap: () {
                    //                 if (category[index].name.toString() == 'Men') {
                    //                   Navigator.push(
                    //                     context,
                    //                     MaterialPageRoute(
                    //                         builder: (context) => ABC()),
                    //                   );
                    //                 }
                    //                 if (category[index].name.toString() ==
                    //                     'Appliances') {
                    //                   // Navigator.push(
                    //                   //   context,
                    //                   //   MaterialPageRoute(
                    //                   //       builder: (context) =>
                    //                   //           AppliancesCategoryListView()),
                    //                   // );
                    //                 }
                    //                 if (category[index].name.toString() ==
                    //                     'Fashion') {
                    //                   // Navigator.push(
                    //                   //   context,
                    //                   //   MaterialPageRoute(
                    //                   //       builder: (context) =>
                    //                   //           FashionCategoriesView()),
                    //                   // );
                    //                 }
                    //                 if (category[index].name.toString() ==
                    //                     'Nutritions') {
                    //                   // Navigator.push(
                    //                   //   context,
                    //                   //   MaterialPageRoute(
                    //                   //       builder: (context) =>
                    //                   //           NutritionCategoryListView()),
                    //                   // );
                    //                 }
                    //                 if (category[index].name.toString() ==
                    //                     'Furniture') {
                    //                   // Navigator.push(
                    //                   //   context,
                    //                   //   MaterialPageRoute(
                    //                   //       builder: (context) =>
                    //                   //           FurnitureCategoryView()),
                    //                   // );
                    //                 }
                    //                 if (category[index].name.toString() ==
                    //                     'Electronics') {
                    //                   // Navigator.push(
                    //                   //   context,
                    //                   //   MaterialPageRoute(
                    //                   //       builder: (context) =>
                    //                   //           ElectronicCategoryView()),
                    //                   // );
                    //                 }
                    //                 if (category[index].name.toString() == 'Beauty') {
                    //                   // Navigator.push(
                    //                   //   context,
                    //                   //   MaterialPageRoute(
                    //                   //       builder: (context) =>
                    //                   //           BeautyCategoryList()),
                    //                   // );
                    //                 }
                    //                 if (category[index].name.toString() ==
                    //                     'Jwellery') {
                    //                   // Navigator.push(
                    //                   //   context,
                    //                   //   MaterialPageRoute(
                    //                   //       builder: (context) =>
                    //                   //           ArtificialJwelleryCategoryListView()),
                    //                   // );
                    //                 }
                    //               },
                    //               child: Padding(
                    //                 padding: EdgeInsets.symmetric(
                    //                     horizontal: 20, vertical: 7),
                    //                 child: Column(
                    //                   mainAxisAlignment:
                    //                       MainAxisAlignment.spaceBetween,
                    //                   children: [
                    //                     // SvgPicture.asset(category[index].imgLabel.toString()),
                    //                     Flexible(
                    //                       flex: 5,
                    //                       child: Image(
                    //                         image: AssetImage(
                    //                             category[index].imgLabel.toString()),
                    //                         height: 45,
                    //                       ),
                    //                     ),
                    //                     Flexible(
                    //                         flex: 2,
                    //                         child: Text(
                    //                             category[index].name.toString())),
                    //                   ],
                    //                 ),
                    //               ),
                    //             );
                    //           },
                    //           scrollDirection: Axis.horizontal,
                    //           itemCount: 8,
                    //         ),
                    //       )
                    //     : Container(),
                    Expanded(
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            CarouselSlider(
                              options: CarouselOptions(
                                viewportFraction: 1,
                                // aspectRatio: ,
                                height: 350.0,
                                autoPlay: true,
                                onPageChanged: (index, reason) {
                                  setState(() {
                                    _current = index;
                                  });
                                },
                              ),
                              items: list.map((item) {
                                return Builder(
                                  builder: (BuildContext context) {
                                    return Container(
                                        width:
                                            MediaQuery.of(context).size.width,
                                        // margin: EdgeInsets.symmetric(horizontal: 5.0),
                                        decoration: BoxDecoration(),
                                        child: Image.network(
                                          '$item',
                                          fit: BoxFit.fill,
                                        ));
                                  },
                                );
                              }).toList(),
                            ),

                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: list.asMap().entries.map((entry) {
                                return GestureDetector(
                                  onTap: () =>
                                      _controller.animateToPage(entry.key),
                                  child: Container(
                                    width: 9.0,
                                    height: 9.0,
                                    margin: EdgeInsets.only(
                                      bottom: 0,
                                      left: 4,
                                      right: 4,
                                    ),
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: (_current == entry.key
                                              ? Color.fromARGB(255, 7, 7, 7)
                                              : Colors.blue[200]
                                          // color: Color(0xFFFF4E00)
                                          //     .withOpacity(_current == entry.key ? 0.9 : 0.4),
                                          ),
                                    ),
                                  ),
                                );
                              }).toList(),
                            ),

                            Container(
                              height: 50,
                              width: MediaQuery.of(context).size.width,
                              child: Scrollbar(
                                child: ListView.builder(
                                    // physics: NeverScrollableScrollPhysics(),
                                    scrollDirection: Axis.horizontal,
                                    itemCount: 5,
                                    itemBuilder:
                                        (BuildContext context, int index) {
                                      return Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.9,
                                        child: Image.network(
                                            'https://assets.myntassets.com/f_webp,w_245,c_limit,fl_progressive,dpr_2.0/assets/images/2022/6/8/5c908d7b-172a-4070-aff8-513a4d786e671654686798169-Bank-strip-prebuzz-ICICI.jpg'),
                                      );
                                    }),
                              ),
                            ),
                            // CarouselSlider(
                            //   options: CarouselOptions(
                            //     height: 200.0,
                            //     autoPlay: true,
                            //     onPageChanged: (index, reason) {
                            //       setState(() {
                            //         _current = index;
                            //       });
                            //     },
                            //   ),
                            //   items: list.map((item) {
                            //     return Builder(
                            //       builder: (BuildContext context) {
                            //         return Container(
                            //           width: MediaQuery.of(context).size.width,
                            //           margin: EdgeInsets.symmetric(horizontal: 5.0),
                            //           decoration: BoxDecoration(),
                            //           child: Image(
                            //             image: NetworkImage(
                            //               item,
                            //             ),
                            //           ),
                            //           // Image.asset(
                            //           //   'assets/$item',
                            //           //   fit: BoxFit.fill,
                            //         ); // ));
                            //       },
                            //     );
                            //   }).toList(),
                            // ),

                            SizedBox(
                              height: 8,
                            ),
                            Divider(
                              color: Colors.black,
                              thickness: 5,
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width,
                              height: 50,
                              color: Colors.black,
                              child: Align(
                                alignment: Alignment.center,
                                child: Text(
                                  'MENS',
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                              ),
                            ),
                            Divider(
                              color: Colors.black,
                              thickness: 5,
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              MensPage(pincode: pincode)),
                                    );
                                  },
                                  child: Container(
                                    width: MediaQuery.of(context).size.width *
                                        0.475,
                                    height: 220,
                                    child: Image.network(
                                      'https://kwabey.com/images/offer-banners/540/1596.jpg',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              MensPage(pincode: pincode)),
                                    );
                                  },
                                  child: Container(
                                    width: MediaQuery.of(context).size.width *
                                        0.475,
                                    height: 220,
                                    child: Image.network(
                                      'https://kwabey.com/images/banners/540/1583.jpg',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 12,
                            ),

                            // Image.network(
                            //     'https://kwabey.com/shared/img/kwabey/fixed/love_india_1.jpg'),
                            Container(
                              width: MediaQuery.of(context).size.width,
                              height: 50,
                              color: Colors.grey[300],
                              child: Align(
                                alignment: Alignment.center,
                                child: Text(
                                  'Try this....',
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                ),
                              ),
                            ),
                            Container(
                              padding:
                                  EdgeInsets.only(top: 5, right: 5, left: 5),
                              height: 340,
                              width: MediaQuery.of(context).size.width,
                              child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  itemCount: 5,
                                  itemBuilder:
                                      (BuildContext context, int index) {
                                    return Padding(
                                      padding: const EdgeInsets.all(5.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            height: 250,
                                            margin: EdgeInsets.all(5),
                                            width: 200,
                                            child: Image.network(images[index],
                                                fit: BoxFit.cover),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Text(
                                              'New Arrival',
                                              style:
                                                  TextStyle(color: Colors.red),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Row(
                                              children: [
                                                Text(
                                                  '\u{20B9} 399',
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                Text(' \u{20B9} 699',
                                                    style: TextStyle(
                                                        decoration:
                                                            TextDecoration
                                                                .lineThrough,
                                                        color: Colors.red)),
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    );
                                  }),
                            ),
                            Divider(
                              color: Colors.black,
                              thickness: 5,
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width,
                              height: 50,
                              color: Colors.black,
                              child: Align(
                                alignment: Alignment.center,
                                child: Text(
                                  'WOMENS',
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                              ),
                            ),
                            Divider(
                              color: Colors.black,
                              thickness: 5,
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.475,
                                  height: 220,
                                  child: Image.network(
                                    'https://kwabey.com/images/banners/540/1586.jpg',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.475,
                                  height: 220,
                                  child: Image.network(
                                    'https://kwabey.com/images/offer-banners/540/1590.jpg',
                                    fit: BoxFit.cover,
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 12,
                            ),

                            // Image.network(
                            //     'https://kwabey.com/shared/img/kwabey/fixed/love_india_1.jpg'),
                            Container(
                              width: MediaQuery.of(context).size.width,
                              height: 50,
                              color: Colors.grey[300],
                              child: Align(
                                alignment: Alignment.center,
                                child: Text(
                                  'Try this....',
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                ),
                              ),
                            ),
                            Container(
                              padding:
                                  EdgeInsets.only(top: 5, right: 5, left: 5),
                              height: 340,
                              width: MediaQuery.of(context).size.width,
                              child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  itemCount: 5,
                                  itemBuilder:
                                      (BuildContext context, int index) {
                                    return Padding(
                                      padding: const EdgeInsets.all(5.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            height: 250,
                                            margin: EdgeInsets.all(5),
                                            width: 200,
                                            child: Image.network(images[index],
                                                fit: BoxFit.cover),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Text(
                                              'New Arrival',
                                              style:
                                                  TextStyle(color: Colors.red),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Row(
                                              children: [
                                                Text(
                                                  '\u{20B9} 399',
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                Text(' \u{20B9} 699',
                                                    style: TextStyle(
                                                        decoration:
                                                            TextDecoration
                                                                .lineThrough,
                                                        color: Colors.red)),
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    );
                                  }),
                            ),
                            Divider(
                              color: Colors.black,
                              thickness: 5,
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width,
                              height: 50,
                              color: Colors.black,
                              child: Align(
                                alignment: Alignment.center,
                                child: Text(
                                  'KIDS',
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                              ),
                            ),
                            Divider(
                              color: Colors.black,
                              thickness: 5,
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.475,
                                  height: 220,
                                  child: Image.network(
                                    'https://static.hopscotch.in/fstatic/product/202203/787aa5af-c8a7-49b6-a843-2e5926c1bc9d_full.jpg?version=1648528388297&tr=w-480,c-at_max,n-normal',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.475,
                                  height: 220,
                                  child: Image.network(
                                    'https://ae01.alicdn.com/kf/H422fabff60704b6e912c8b3ee37aae8bu/Boys-Clothing-Sets-Kids-Clothes-Children-Clothing-Boys-Clothes-Suits-Costume-For-Kids-Sport-Suit-Sports.jpg_Q90.jpg_.webp',
                                    fit: BoxFit.cover,
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 12,
                            ),

                            // Image.network(
                            //     'https://kwabey.com/shared/img/kwabey/fixed/love_india_1.jpg'),
                            Container(
                              width: MediaQuery.of(context).size.width,
                              height: 50,
                              color: Colors.grey[300],
                              child: Align(
                                alignment: Alignment.center,
                                child: Text(
                                  'Try this....',
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                ),
                              ),
                            ),
                            Container(
                              padding:
                                  EdgeInsets.only(top: 5, right: 5, left: 5),
                              height: 340,
                              width: MediaQuery.of(context).size.width,
                              child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  itemCount: 5,
                                  itemBuilder:
                                      (BuildContext context, int index) {
                                    return Padding(
                                      padding: const EdgeInsets.all(5.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            height: 250,
                                            margin: EdgeInsets.all(5),
                                            width: 200,
                                            child: Image.network(images[index],
                                                fit: BoxFit.cover),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Text(
                                              'New Arrival',
                                              style:
                                                  TextStyle(color: Colors.red),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Row(
                                              children: [
                                                Text(
                                                  '\u{20B9} 399',
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                Text(' \u{20B9} 699',
                                                    style: TextStyle(
                                                        decoration:
                                                            TextDecoration
                                                                .lineThrough,
                                                        color: Colors.red)),
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    );
                                  }),
                            ),

                            Container(
                              width: MediaQuery.of(context).size.width,
                              height: 50,
                              color: Colors.grey[300],
                              child: Align(
                                alignment: Alignment.center,
                                child: Text(
                                  'Exciting Offers',
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            GestureDetector(
                              // onTap: () => Navigator.push(
                              //   context,
                              //   MaterialPageRoute(builder: (context) => ABC()),
                              // ),
                              child: Image(
                                image: AssetImage(AppImages.picOffer1),
                              ),
                            ),
                            GestureDetector(
                              // onTap: () => Navigator.push(
                              //   context,
                              //   MaterialPageRoute(builder: (context) => ABC()),
                              // ),
                              child: Image(
                                image: AssetImage(AppImages.picOffer2),
                              ),
                            ),
                            Image.network(
                                'https://kwabey.com/shared/img/kwabey/fixed/footer_ss_kwabey_3.jpg'),
                          ],
                        ),
                      ),
                    ),
                  ],
                )
              : Container()),
    );
  }
}
