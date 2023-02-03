import 'package:flutter/material.dart';
import 'package:tryplore/ui/ui.dart';


const String splashScreen = '/';

//Bottom Nav
const String homePage = '/homePage';
const String profilePage = '/profilePage';
const String categoryPage = '/categoryPage';
const String detailsPage = '/detailsPage';
const String offersPage = '/offersPage';

//Cart 
const String addToCart = '/addToCart';
const String checkoutPage = '/checkoutPage';

//Other Page
const String mensPage = '/mensPage';
const String productDetailPage = '/productDetailPage';


Route<dynamic> controller(RouteSettings settings) {
  final args = settings.arguments;
  
  switch (settings.name) {
    case splashScreen:
      return MaterialPageRoute(
          builder: (context) => const SplashScreenPage(), settings: settings
        );
    case homePage:
      return MaterialPageRoute(
          builder: (context) => const HomePage(), settings: settings
        );
    case profilePage:
      return MaterialPageRoute(
          builder: (context) => const ProfilePage(), settings: settings
        );
    case categoryPage:
      return MaterialPageRoute(
          builder: (context) => CategoriesPage(), settings: settings
        );
    case detailsPage:
      return MaterialPageRoute(
          builder: (context) => const DetailPage(), settings: settings
        );
    
    case offersPage:
      return MaterialPageRoute(
          builder: (context) => const OfferPage(), settings: settings
        );

    case addToCart:
      return MaterialPageRoute(
          builder: (context) => const AddToCart(), settings: settings
        );

    case checkoutPage:
      return MaterialPageRoute(
          builder: (context) => const CheckoutPage(), settings: settings
        );
    
    case mensPage:
      return MaterialPageRoute(
          builder: (context) => MensPage(pincode: args as String,), settings: settings
        );
  
    case productDetailPage:
      return MaterialPageRoute(
          builder: (context) => ProductDetail(pincode: args as String,), settings: settings
        );
    
    // case uploadVideo:
    //   return MaterialPageRoute(
    //       builder: (context) => BlocProvider(
    //             create: (context) => UploadVideoCubit(UtilRepository()),
    //             child: UploadVideo(
    //               videoModel: args as VideoModel,
    //             ),
    //           ),
    //       settings: settings);
    // case addNewAppointment:
    //   return MaterialPageRoute(
    //       builder: (context) => BlocProvider(
    //             create: (context) => AddNewAppointmentCubit(
    //                 AppointmentRepository(), AccountRepository()),
    //             child: AddNewAppointment(),
    //           ),
    //       settings: settings);

    default:
      throw ('this route name does not exist');
  }
}
