// // import 'package:flutter/material.dart';
// // import 'package:get/get.dart';
// // import 'package:flutter_screenutil/flutter_screenutil.dart';
// // import 'Screens/Log_In/Login.dart';
// //
// // void main() {
// //   runApp(const MyApp());
// // }
// //
// // class MyApp extends StatelessWidget {
// //   const MyApp({super.key});
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     double screenWidth = MediaQuery.of(context).size.width;
// //     double screenHeight = MediaQuery.of(context).size.height;
// //     return ScreenUtilInit(
// //       designSize: Size(screenWidth, screenHeight),
// //       minTextAdapt: true,
// //       splitScreenMode: true,
// //       builder: (_, child) {
// //         return GetMaterialApp(
// //           title: 'Flutter Demo',
// //           theme: ThemeData(
// //             colorScheme: ColorScheme.fromSeed(
// //                 seedColor: const Color.fromRGBO(235, 243, 241, 0)),
// //             useMaterial3: true,
// //           ),
// //           home: const loginScreen(),
// //         );
// //       },
// //     );
// //   }
// // }

// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:testfile/Screens/Splash/splash.dart';

// void main() {
//   runApp(MyApp());
// }

// // class MyApp extends StatelessWidget {
// //   const MyApp({super.key});

// //   @override
// //   Widget build(BuildContext context) {
// //     double screenWidth = MediaQuery.of(context).size.width;
// //     double screenHeight = MediaQuery.of(context).size.height;
// //     return ScreenUtilInit(
// //       designSize: Size(393, 851),
// //       minTextAdapt: true,
// //       splitScreenMode: true,
// //       builder: (_, child) {
// //         return GetMaterialApp(
// //           title: 'Flutter Demo',
// //           debugShowCheckedModeBanner: false,
// //           theme: ThemeData(
// //             // colorScheme: ColorScheme.fromSeed(
// //             //     seedColor: const Color.fromRGBO(235, 243, 241, 1)),
// //             useMaterial3: true,
// //           ),
// //           home: SplashScreen(),
// //         );
// //       },
// //     );
// //   }
// // }





import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:testfile/Screens/Splash/splash.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return ScreenUtilInit(
            designSize: Size(393, 851),
      minTextAdapt: true,
      splitScreenMode: true,// // Adjust the design size as needed
      builder: (context, child) {
        return GetMaterialApp(
          title: 'Flutter Demo',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            // colorScheme: ColorScheme.fromSeed(
            //     seedColor: const Color.fromRGBO(235, 243, 241, 1)),
            useMaterial3: true,
          ),
          translations: AppTranslations(), // Your translations
          locale: Locale('en', 'US'), // Default locale
          fallbackLocale: Locale('en', 'US'), // Fallback locale
          home: SplashScreen(),
        );
      },
    );
  }
}

class AppTranslations extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': {
          'book_ticket': 'Book Ticket in a Tap',
          'language_preference': 'Your Language Preference',
          'english': 'English',
          'bangla': 'বাংলা',
          'continue': 'Continue',
        },
        'bn_BD': {
          'book_ticket': 'একটি ট্যাপে টিকিট বুক করুন',
          'language_preference': 'আপনার ভাষার পছন্দ',
          'english': 'English',
          'bangla': 'বাংলা',
          'continue': 'পরবর্তী',
        },
      };
}
