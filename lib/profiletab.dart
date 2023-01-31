// import 'dart:io';
import 'dart:io';

import 'package:auto_size_text/auto_size_text.dart';
// import 'package:contact_us/address.dart';
// import 'package:contact_us/orderlist.dart';
import 'package:cupertino_list_tile/cupertino_list_tile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker_gallery_camera/image_picker_gallery_camera.dart';

import 'package:lottie/lottie.dart';

// import 'editprofile.dart';

class ProfileTab extends StatefulWidget {
  const ProfileTab({super.key});

  @override
  State<ProfileTab> createState() => _ProfileTabState();
}

class _ProfileTabState extends State<ProfileTab> {
  late final String title;

  var _image;

  Future getImage(ImgSource source) async {
    var image = await ImagePickerGC.pickImage(
        // enableCloseButton: true,
        // closeIcon: Icon(
        //   Icons.close,
        //   color: Colors.red,
        //   size: 12,
        // ),
        context: context,
        source: source,
        barrierDismissible: true,
        cameraIcon: Icon(
          Icons.camera_alt,
          color: Colors.red,
        ), //cameraIcon and galleryIcon can change. If no icon provided default icon will be present
        cameraText: Text(
          "From Camera",
          style: TextStyle(color: Colors.red),
        ),
        galleryText: Text(
          "From Gallery",
          style: TextStyle(color: Colors.blue),
        ));
    setState(() {
      _image = image;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        physics: AlwaysScrollableScrollPhysics(),
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Center(
              child: Stack(
                children: [
                  Container(
                    height: 150,
                    width: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(45),
                      border: Border.all(color: Color(0xff043E81), width: 2),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(45),
                      child: _image != null
                          ? Image.file(
                              File(_image.path),
                              fit: BoxFit.fill,
                              height: 150,
                              width: 150,
                            )
                          : Lottie.asset(
                              'assets/profile.json',
                              height: 110,
                              width: 110,
                              fit: BoxFit.fill,
                            ),
                    ),
                  ),
                  Positioned(
                      top: 102.5,
                      left: 80,
                      child: RawMaterialButton(
                          elevation: 2.5,
                          fillColor: Colors.grey[50],
                          child: Icon(
                            Icons.refresh,
                            color: Colors.black,
                            size: 25,
                          ),
                          padding: EdgeInsets.all(0.0),
                          shape: CircleBorder(),
                          onPressed: () {}
                          //   getImage(ImgSource.Both);
                          // },
                          )),
                  // _image != null
                  //     ? Container(
                  //         height: 150,
                  //         width: 150,
                  //         decoration: BoxDecoration(
                  //           borderRadius: BorderRadius.circular(45),
                  //           border:
                  //               Border.all(color: Color(0xff043E81), width: 2),
                  //         ),
                  //         child: Image.file(File(_image.path))

                  //         )
                  //     : Container(),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            AutoSizeText(
              'Aayush Shah',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            SizedBox(
              height: 20,
            ),
            Column(
              children: [
                Container(
                  height: 500,
                  color: Colors.white,
                  child: CupertinoScrollbar(
                    child: ListView(
                      children: [
                        CupertinoListTile(
                          leading: Icon(
                            Icons.favorite,
                            color: Colors.green,
                          ),
                          title: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              AutoSizeText(
                                'My orders',
                                style: TextStyle(),
                              ),
                              AutoSizeText(
                                'Check your order status',
                                style: TextStyle(fontSize: 13),
                              ),
                            ],
                          ),
                          onTap: () =>
                              Navigator.of(context).pushNamed('/one-line'),
                        ),
                        CupertinoListTile(
                          leading: Icon(
                            Icons.notifications,
                            color: Colors.green,
                          ),
                          title: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              AutoSizeText(
                                'My Profile',
                                style: TextStyle(),
                              ),
                              AutoSizeText(
                                'Update your profile',
                                style: TextStyle(fontSize: 13),
                              ),
                            ],
                          ),
                          onTap: () =>
                              Navigator.of(context).pushNamed('/one-line'),
                        ),
                        CupertinoListTile(
                          leading: Icon(
                            Icons.home,
                            color: Colors.green,
                          ),
                          title: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              AutoSizeText(
                                'My Address',
                                style: TextStyle(),
                              ),
                              AutoSizeText(
                                'View Address',
                                style: TextStyle(fontSize: 13),
                              ),
                            ],
                          ),
                          onTap: (() {
                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(
                            //       builder: (context) => const AddressScreen()),
                            // );
                          }),
                        ),
                        CupertinoListTile(
                          leading: Icon(
                            Icons.person_outlined,
                            color: Colors.green,
                          ),
                          title: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              AutoSizeText(
                                'About Us',
                                style: TextStyle(),
                              ),
                              AutoSizeText(
                                'View our details',
                                style: TextStyle(fontSize: 13),
                              ),
                            ],
                          ),
                          onTap: (() {
                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(
                            //       builder: (context) => const AddressScreen()),
                            // );
                          }),
                        ),
                        CupertinoListTile(
                          leading: Icon(
                            Icons.note,
                            color: Colors.green,
                          ),
                          title: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              AutoSizeText(
                                'FAQ',
                                style: TextStyle(),
                              ),
                              AutoSizeText(
                                'Queries related to you',
                                style: TextStyle(fontSize: 13),
                              ),
                            ],
                          ),
                          onTap: (() {
                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(
                            //       builder: (context) => const AddressScreen()),
                            // );
                          }),
                        ),
                        CupertinoListTile(
                          leading: Icon(
                            Icons.quick_contacts_dialer_outlined,
                            color: Colors.green,
                          ),
                          title: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              AutoSizeText(
                                'Contact Us',
                                style: TextStyle(),
                              ),
                              AutoSizeText(
                                'View Address',
                                style: TextStyle(fontSize: 13),
                              ),
                            ],
                          ),
                          onTap: (() {
                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(
                            //       builder: (context) => const AddressScreen()),
                            // );
                          }),
                        ),
                        CupertinoListTile(
                          leading: Icon(
                            Icons.lock,
                            color: Colors.green,
                          ),
                          title: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              AutoSizeText(
                                'Privacy Policy',
                                style: TextStyle(),
                              ),
                              AutoSizeText(
                                'Read terms and conditions',
                                style: TextStyle(fontSize: 13),
                              ),
                            ],
                          ),
                          onTap: (() {
                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(
                            //       builder: (context) => const AddressScreen()),
                            // );
                          }),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      )),
    );
  }
}
