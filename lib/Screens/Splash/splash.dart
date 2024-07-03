import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:testfile/Components/CustomButton.dart';
import 'package:testfile/Screens/Log_In/Login.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  String selectedLanguage = 'en';

  void changeLanguage(String languageCode) {
    Locale locale = Locale(languageCode);
    Get.updateLocale(locale);
    setState(() {
      selectedLanguage = languageCode;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                'assets/metroLogoOnly.svg', // Make sure you have your logo image in assets
                height: 150, // Adjust the height according to your logo size
              ),
              SizedBox(height: 4.h),
              Text(
                'Dhaka Mass Transit Company Limited',
                style: GoogleFonts.poppins(
                  color: Color.fromRGBO(90, 117, 112, 1),
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  letterSpacing: .5,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 80),
              Text(
                'book_ticket'.tr,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.green,
                ),
              ),
              SizedBox(height: 30),
              Text(
                'language_preference'.tr,
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.grey,
                ),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Radio<String>(
                        value: 'en',
                        groupValue: selectedLanguage,
                        onChanged: (value) {
                          changeLanguage(value!);
                        },
                      ),
                      Text('english'.tr),
                    ],
                  ),
                  SizedBox(width: 25),
                  Column(
                    children: [
                      Radio<String>(
                        value: 'bn',
                        groupValue: selectedLanguage,
                        onChanged: (value) {
                          changeLanguage(value!);
                        },
                      ),
                      Text('bangla'.tr),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 150),
              Center(
                child: Container(
                  alignment: Alignment.center,
                  width: 276.w,
                  height: 68.h,
                  child: CustomButton(
                    text: 'continue'.tr,
                    onPressed: () {
                      Get.to(LoginPage());
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}



