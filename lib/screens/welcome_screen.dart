import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_app_ui/components/app_text.dart';
import 'package:travel_app_ui/constants/image_path.dart';
import 'package:travel_app_ui/screens/home_screen.dart';
import 'package:travel_app_ui/themes/app_colors.dart';

class WelcomeScreen extends StatelessWidget {
  WelcomeScreen({super.key});
  var height, width;

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: height,
            width: width,
            color: Colors.grey.shade200,
            child: Image.asset(
              ImagePath.bg,
              fit: BoxFit.cover,
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: SizedBox(
              width: width,
              height: height * 0.32,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "Let's start Journey, Enjoy",
                    style: GoogleFonts.lexend(
                      fontSize: width * 0.058,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    "Beautiful movement of life",
                    style: GoogleFonts.lexend(
                      fontSize: width * 0.058,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: height * 0.02),
                  InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return const HomeScreen();
                      }));
                    },
                    child: Container(
                      height: height * 0.065,
                      width: width * 0.75,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: AppColors.appWhite,
                      ),
                      child: Center(
                        child: Text(
                          "Start",
                          style: GoogleFonts.lexend(
                            fontSize: width * 0.05,
                            fontWeight: FontWeight.w500,
                            color: AppColors.appBlack,
                            letterSpacing: 1,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: height * 0.02),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "Don\'t have account?",
                      style: GoogleFonts.lexend(
                        fontSize: width * 0.04,
                        fontWeight: FontWeight.w400,
                        color: AppColors.appWhite,
                      ),
                    ),
                  ),
                  SizedBox(height: height * 0.02),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
