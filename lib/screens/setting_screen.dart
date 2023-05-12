import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_app_ui/components/app_text.dart';
import 'package:travel_app_ui/themes/app_colors.dart';
import 'package:travel_app_ui/themes/card_padding.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  var height, width;
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: AppColors.appWhite,
      appBar: AppBar(
        centerTitle: true,
        elevation: 1,
        backgroundColor: AppColors.appWhite,
        title: Text(
          "Settings",
          style: GoogleFonts.lexend(
            fontSize: width * 0.050,
            fontWeight: FontWeight.bold,
            color: Colors.black54,
          ),
        ),
        toolbarHeight: 80,
      ),
      body: SingleChildScrollView(
        child: Container(
          height: height,
          width: width,
          child: Column(
            children: [
              // const Padding(
              //   padding: EdgeInsets.symmetric(horizontal: 40, vertical: 8),
              // ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Container(
                  height: height * 0.073,
                  width: width * 0.9,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: CardPadding.appRadius,
                  ),
                  child: Center(
                    child: Padding(
                      padding: EdgeInsets.only(left: width * 0.03),
                      child: TextFormField(
                        style: const TextStyle(
                          color: AppColors.appWhite,
                        ),
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Search here...",
                          hintStyle: GoogleFonts.lexend(
                            color: Colors.grey,
                            fontSize: width * 0.04,
                          ),
                          prefixIcon: Icon(
                            Icons.search,
                            color: Colors.black54,
                            size: width * 0.09,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: ListTile(
                  onTap: () {},
                  leading: Container(
                    padding: const EdgeInsets.all(5),
                    decoration: const BoxDecoration(
                      color: AppColors.primaryColors,
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      Icons.person,
                      color: AppColors.appWhite,
                      size: 35,
                    ),
                  ),
                  title: const AppText(
                    text: "Account",
                    color: Colors.black54,
                    size: 20,
                    fontWeight: FontWeight.w500,
                  ),
                  trailing: const Icon(
                    Icons.arrow_forward_ios_rounded,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: ListTile(
                  onTap: () {},
                  leading: Container(
                    padding: const EdgeInsets.all(5),
                    decoration: const BoxDecoration(
                      color: AppColors.primaryColors,
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      Icons.notifications_none_outlined,
                      color: AppColors.appWhite,
                      size: 35,
                    ),
                  ),
                  title: const AppText(
                    text: "Notification",
                    color: Colors.black54,
                    size: 20,
                    fontWeight: FontWeight.w500,
                  ),
                  trailing: const Icon(
                    Icons.arrow_forward_ios_rounded,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: ListTile(
                  onTap: () {},
                  leading: Container(
                    padding: const EdgeInsets.all(5),
                    decoration: const BoxDecoration(
                      color: AppColors.primaryColors,
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      Icons.visibility,
                      color: AppColors.appWhite,
                      size: 35,
                    ),
                  ),
                  title: const AppText(
                    text: "Appearance",
                    color: Colors.black54,
                    size: 20,
                    fontWeight: FontWeight.w500,
                  ),
                  trailing: const Icon(
                    Icons.arrow_forward_ios_rounded,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: ListTile(
                  onTap: () {},
                  leading: Container(
                    padding: const EdgeInsets.all(5),
                    decoration: const BoxDecoration(
                      color: AppColors.primaryColors,
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      Icons.lock,
                      color: AppColors.appWhite,
                      size: 35,
                    ),
                  ),
                  title: const AppText(
                    text: "Privacy & Security",
                    color: Colors.black54,
                    size: 20,
                    fontWeight: FontWeight.w500,
                  ),
                  trailing: const Icon(
                    Icons.arrow_forward_ios_rounded,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: ListTile(
                  onTap: () {},
                  leading: Container(
                    padding: const EdgeInsets.all(5),
                    decoration: const BoxDecoration(
                      color: AppColors.primaryColors,
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      Icons.notifications_none_outlined,
                      color: AppColors.appWhite,
                      size: 35,
                    ),
                  ),
                  title: const AppText(
                    text: "Help & Support",
                    color: Colors.black54,
                    size: 20,
                    fontWeight: FontWeight.w500,
                  ),
                  trailing: const Icon(
                    Icons.arrow_forward_ios_rounded,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: ListTile(
                  onTap: () {},
                  leading: Container(
                    padding: const EdgeInsets.all(5),
                    decoration: const BoxDecoration(
                      color: AppColors.primaryColors,
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      Icons.help,
                      color: AppColors.appWhite,
                      size: 35,
                    ),
                  ),
                  title: const AppText(
                    text: "About",
                    color: Colors.black54,
                    size: 20,
                    fontWeight: FontWeight.w500,
                  ),
                  trailing: const Icon(
                    Icons.arrow_forward_ios_rounded,
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
