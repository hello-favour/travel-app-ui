import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_app_ui/constants/image_path.dart';
import 'package:travel_app_ui/themes/app_colors.dart';
import 'package:travel_app_ui/themes/card_padding.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  var height, width;
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: AppColors.appWhite,
      appBar: AppBar(
        toolbarHeight: 70,
        elevation: 0,
        centerTitle: true,
        backgroundColor: AppColors.appWhite,
        title: Text(
          "Notifications",
          style: GoogleFonts.lexend(
            fontSize: width * 0.050,
            fontWeight: FontWeight.bold,
            color: Colors.black54,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: TextButton(
              onPressed: () {},
              child: Text(
                "Clear all",
                style: GoogleFonts.lexend(
                  fontSize: width * 0.030,
                  fontWeight: FontWeight.bold,
                  color: AppColors.primaryColors,
                ),
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Container(
                height: 90,
                padding: const EdgeInsets.symmetric(vertical: 8),
                decoration: BoxDecoration(
                  color: const Color(0xFFF2F2F2),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "21 minutes ago",
                                  style: GoogleFonts.lexend(
                                    fontSize: width * 0.035,
                                    fontWeight: FontWeight.bold,
                                    color: AppColors.appBlack,
                                  ),
                                ),
                                const SizedBox(height: 10),
                                Text(
                                  "Tim Schoch commented on your post",
                                  style: GoogleFonts.lexend(
                                    fontSize: width * 0.025,
                                    fontWeight: FontWeight.w700,
                                    color: AppColors.primaryColors,
                                  ),
                                ),
                              ],
                            ),
                            const CircleAvatar(
                              backgroundColor: AppColors.primaryColors,
                              radius: 40,
                              backgroundImage: AssetImage(ImagePath.girl),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Container(
                height: 90,
                padding: const EdgeInsets.symmetric(vertical: 8),
                decoration: BoxDecoration(
                  color: const Color(0xFFF2F2F2),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "45 minutes ago",
                                  style: GoogleFonts.lexend(
                                    fontSize: width * 0.035,
                                    fontWeight: FontWeight.bold,
                                    color: AppColors.appBlack,
                                  ),
                                ),
                                const SizedBox(height: 10),
                                Text(
                                  "Praise Wisdom commented on your post",
                                  style: GoogleFonts.lexend(
                                    fontSize: width * 0.025,
                                    fontWeight: FontWeight.w700,
                                    color: AppColors.primaryColors,
                                  ),
                                ),
                              ],
                            ),
                            const CircleAvatar(
                              backgroundColor: AppColors.primaryColors,
                              radius: 40,
                              backgroundImage: AssetImage(ImagePath.world),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Container(
                height: 90,
                padding: const EdgeInsets.symmetric(vertical: 8),
                decoration: BoxDecoration(
                  color: const Color(0xFFF2F2F2),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "7 Hours ago",
                                  style: GoogleFonts.lexend(
                                    fontSize: width * 0.035,
                                    fontWeight: FontWeight.bold,
                                    color: AppColors.appBlack,
                                  ),
                                ),
                                const SizedBox(height: 10),
                                Text(
                                  "Favour Williams commented on your post",
                                  style: GoogleFonts.lexend(
                                    fontSize: width * 0.025,
                                    fontWeight: FontWeight.w700,
                                    color: AppColors.primaryColors,
                                  ),
                                ),
                              ],
                            ),
                            const CircleAvatar(
                              backgroundColor: AppColors.primaryColors,
                              radius: 40,
                              backgroundImage: AssetImage(ImagePath.girlTravel),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Container(
                height: 90,
                padding: const EdgeInsets.symmetric(vertical: 8),
                decoration: BoxDecoration(
                  color: const Color(0xFFF2F2F2),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "21 minutes ago",
                                  style: GoogleFonts.lexend(
                                    fontSize: width * 0.035,
                                    fontWeight: FontWeight.bold,
                                    color: AppColors.appBlack,
                                  ),
                                ),
                                const SizedBox(height: 10),
                                Text(
                                  "Tim Schoch commented on your post",
                                  style: GoogleFonts.lexend(
                                    fontSize: width * 0.025,
                                    fontWeight: FontWeight.w700,
                                    color: AppColors.primaryColors,
                                  ),
                                ),
                              ],
                            ),
                            const CircleAvatar(
                              backgroundColor: AppColors.primaryColors,
                              radius: 40,
                              backgroundImage: AssetImage(ImagePath.girl),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Container(
                height: 90,
                padding: const EdgeInsets.symmetric(vertical: 8),
                decoration: BoxDecoration(
                  color: const Color(0xFFF2F2F2),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "21 minutes ago",
                                  style: GoogleFonts.lexend(
                                    fontSize: width * 0.035,
                                    fontWeight: FontWeight.bold,
                                    color: AppColors.appBlack,
                                  ),
                                ),
                                const SizedBox(height: 10),
                                Text(
                                  "Tim Schoch commented on your post",
                                  style: GoogleFonts.lexend(
                                    fontSize: width * 0.025,
                                    fontWeight: FontWeight.w700,
                                    color: AppColors.primaryColors,
                                  ),
                                ),
                              ],
                            ),
                            const CircleAvatar(
                              backgroundColor: AppColors.primaryColors,
                              radius: 40,
                              backgroundImage: AssetImage(ImagePath.girl),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Container(
                height: 90,
                padding: const EdgeInsets.symmetric(vertical: 8),
                decoration: BoxDecoration(
                  color: const Color(0xFFF2F2F2),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "21 minutes ago",
                                  style: GoogleFonts.lexend(
                                    fontSize: width * 0.035,
                                    fontWeight: FontWeight.bold,
                                    color: AppColors.appBlack,
                                  ),
                                ),
                                const SizedBox(height: 10),
                                Text(
                                  "Tim Schoch commented on your post",
                                  style: GoogleFonts.lexend(
                                    fontSize: width * 0.025,
                                    fontWeight: FontWeight.w700,
                                    color: AppColors.primaryColors,
                                  ),
                                ),
                              ],
                            ),
                            const CircleAvatar(
                              backgroundColor: AppColors.primaryColors,
                              radius: 40,
                              backgroundImage: AssetImage(ImagePath.bg),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Container(
                height: 90,
                padding: const EdgeInsets.symmetric(vertical: 8),
                decoration: BoxDecoration(
                  color: const Color(0xFFF2F2F2),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "21 minutes ago",
                                  style: GoogleFonts.lexend(
                                    fontSize: width * 0.035,
                                    fontWeight: FontWeight.bold,
                                    color: AppColors.appBlack,
                                  ),
                                ),
                                const SizedBox(height: 10),
                                Text(
                                  "Tim Schoch commented on your post",
                                  style: GoogleFonts.lexend(
                                    fontSize: width * 0.025,
                                    fontWeight: FontWeight.w700,
                                    color: AppColors.primaryColors,
                                  ),
                                ),
                              ],
                            ),
                            const CircleAvatar(
                              backgroundColor: AppColors.primaryColors,
                              radius: 40,
                              backgroundImage: AssetImage(ImagePath.girl),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Container(
                height: 90,
                padding: const EdgeInsets.symmetric(vertical: 8),
                decoration: BoxDecoration(
                  color: const Color(0xFFF2F2F2),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "20 Hours ago",
                                  style: GoogleFonts.lexend(
                                    fontSize: width * 0.035,
                                    fontWeight: FontWeight.bold,
                                    color: AppColors.appBlack,
                                  ),
                                ),
                                const SizedBox(height: 10),
                                Text(
                                  "Oswin Code commented on your post",
                                  style: GoogleFonts.lexend(
                                    fontSize: width * 0.025,
                                    fontWeight: FontWeight.w700,
                                    color: AppColors.primaryColors,
                                  ),
                                ),
                              ],
                            ),
                            const CircleAvatar(
                              backgroundColor: AppColors.primaryColors,
                              radius: 40,
                              backgroundImage: AssetImage(ImagePath.girl),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
