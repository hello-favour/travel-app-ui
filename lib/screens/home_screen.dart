import 'package:google_fonts/google_fonts.dart';
import 'package:travel_app_ui/constants/icons_path.dart';
import 'package:travel_app_ui/constants/image_path.dart';
import 'package:travel_app_ui/themes/app_colors.dart';
import 'package:travel_app_ui/themes/card_padding.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var height, width;

  List iconImages = [
    IconsPath.flight,
    IconsPath.condo,
    IconsPath.plate,
    IconsPath.frontBus,
    IconsPath.flight,
    IconsPath.condo,
    IconsPath.plate,
    IconsPath.frontBus,
  ];

  List imgs = [
    ImagePath.aroplane,
    ImagePath.bg,
    ImagePath.girl,
    ImagePath.girlTravel,
    ImagePath.world,
  ];
  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
          child: Container(
            height: height,
            width: width,
            color: AppColors.appWhite,
            child: Column(
              children: [
                SizedBox(height: height * 0.035),
                SizedBox(
                  width: width * 0.9,
                  height: height * 0.07,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Explore",
                            style: GoogleFonts.lexend(
                              fontSize: width * 0.059,
                              fontWeight: FontWeight.w700,
                              color: AppColors.appBlack,
                            ),
                          ),
                          Text(
                            "Explore your world Beauty",
                            style: GoogleFonts.lexend(
                              fontSize: width * 0.037,
                              fontWeight: FontWeight.w500,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: height * 0.35),
                      Container(
                        height: height * 0.035,
                        width: width * 0.11,
                        decoration: BoxDecoration(
                          borderRadius: CardPadding.appRadius,
                          color: AppColors.appWhite,
                          image: const DecorationImage(
                            image: AssetImage(ImagePath.girl),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: height * 0.02),
                Container(
                  height: height * 0.073,
                  width: width * 0.9,
                  decoration: BoxDecoration(
                    color: Colors.blue.withOpacity(0.3),
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
                SizedBox(height: height * 0.035),
                SizedBox(
                  height: height * 0.08,
                  child: ListView.builder(
                    itemCount: iconImages.length,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Card(
                          elevation: 4,
                          shape: RoundedRectangleBorder(
                            borderRadius: CardPadding.appRadius,
                          ),
                          child: Container(
                            width: width * 0.14,
                            height: 0.068,
                            decoration: BoxDecoration(
                              borderRadius: CardPadding.appRadius,
                              color: AppColors.primaryColors,
                            ),
                            child: Center(
                              child: Image(
                                height: height * 0.04,
                                color: AppColors.appWhite,
                                image: AssetImage(
                                  iconImages[index],
                                ),
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(height: height * 0.035),
                SizedBox(
                  width: width * 0.9,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "All",
                        style: GoogleFonts.lexend(
                          fontSize: width * 0.04,
                          fontWeight: FontWeight.w500,
                          color: Colors.black54,
                        ),
                      ),
                      Text(
                        "New",
                        style: GoogleFonts.lexend(
                          fontSize: width * 0.04,
                          fontWeight: FontWeight.w500,
                          color: Colors.black54,
                        ),
                      ),
                      Text(
                        "Tours",
                        style: GoogleFonts.lexend(
                          fontSize: width * 0.04,
                          fontWeight: FontWeight.w500,
                          color: AppColors.primaryColors,
                        ),
                      ),
                      Text(
                        "Asia",
                        style: GoogleFonts.lexend(
                          fontSize: width * 0.04,
                          fontWeight: FontWeight.w500,
                          color: Colors.black54,
                        ),
                      ),
                      Text(
                        "Adventure",
                        style: GoogleFonts.lexend(
                          fontSize: width * 0.04,
                          fontWeight: FontWeight.w500,
                          color: Colors.black54,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: height * 0.035),
                SizedBox(
                  height: height * 0.44,
                  width: width,
                  child: ListView.builder(
                    itemCount: imgs.length,
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: width * 0.05, vertical: height * 0.01),
                        child: InkWell(
                          onTap: () {},
                          child: Container(
                            width: width * 0.6,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              color: AppColors.appWhite,
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(
                                  imgs[index],
                                ),
                              ),
                            ),
                            child: Stack(
                              children: [
                                Align(
                                  alignment: Alignment.bottomCenter,
                                  child: SizedBox(
                                    height: height * 0.14,
                                    width: width * 0.47,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "CALIFONIA",
                                          style: GoogleFonts.lexend(
                                            fontSize: width * 0.043,
                                            fontWeight: FontWeight.w600,
                                            color: AppColors.appWhite,
                                          ),
                                        ),
                                        Text(
                                          "United State",
                                          style: GoogleFonts.lexend(
                                            fontSize: width * 0.033,
                                            fontWeight: FontWeight.w500,
                                            color: AppColors.appWhite,
                                          ),
                                        ),
                                        RatingBar.builder(
                                          initialRating: 4,
                                          minRating: 1,
                                          direction: Axis.horizontal,
                                          allowHalfRating: true,
                                          itemCount: 5,
                                          itemSize: 25,
                                          unratedColor: AppColors.appWhite,
                                          itemPadding:
                                              const EdgeInsets.symmetric(
                                                  horizontal: 4.0),
                                          itemBuilder: (context, _) =>
                                              const Icon(
                                            Icons.star,
                                            color: Colors.amber,
                                          ),
                                          onRatingUpdate: (rating) {
                                            print(rating);
                                          },
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(width: width * 0.05),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(height: height * 0.035),
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          unselectedItemColor: Colors.grey,
          selectedItemColor: AppColors.primaryColors,
          iconSize: 30,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          selectedFontSize: 16,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite), label: "Notification"),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: "Setting"),
          ],
        ),
      ),
    );
  }
}
