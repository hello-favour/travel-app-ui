import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_app_ui/constants/icons_path.dart';
import 'package:travel_app_ui/constants/image_path.dart';
import 'package:travel_app_ui/themes/app_colors.dart';

class PlaceScreen extends StatefulWidget {
  const PlaceScreen({super.key});

  @override
  State<PlaceScreen> createState() => _PlaceScreenState();
}

class _PlaceScreenState extends State<PlaceScreen> {
  var height, width;
  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        height: height,
        width: width,
        color: AppColors.appWhite,
        child: Column(
          children: [
            Container(
              width: width,
              height: height * 0.57,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(ImagePath.girlTravel),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(35),
                  bottomRight: Radius.circular(35),
                ),
              ),
              child: Stack(
                children: [
                  Container(
                    height: height,
                    width: width,
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.40),
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(35),
                        bottomRight: Radius.circular(35),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: SizedBox(
                      height: height * 0.60,
                      width: width * 0.9,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: height * 0.051,
                            width: width * 0.1,
                            decoration: const BoxDecoration(
                              color: AppColors.appWhite,
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                            ),
                            child: Center(
                              child: Icon(
                                Icons.arrow_back_ios,
                                color: AppColors.primaryColors,
                                size: width * 0.05,
                              ),
                            ),
                          ),
                          Container(
                            height: height * 0.051,
                            width: width * 0.1,
                            decoration: const BoxDecoration(
                              color: AppColors.appWhite,
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                            ),
                            child: Center(
                              child: Icon(
                                Icons.search,
                                color: AppColors.appBlack,
                                size: width * 0.06,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: SizedBox(
                      height: height * 0.23,
                      width: width * 0.9,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "The Montcalm At\nBrewery London City",
                            style: GoogleFonts.lexend(
                              fontSize: width * 0.066,
                              fontWeight: FontWeight.w600,
                              color: AppColors.appWhite,
                            ),
                          ),
                          SizedBox(height: height * 0.02),
                          Row(
                            children: [
                              SizedBox(height: width * 0.03),
                              Icon(
                                Icons.location_on,
                                color: AppColors.primaryColors,
                                size: width * 0.07,
                              ),
                              Text(
                                "London",
                                style: GoogleFonts.lexend(
                                  fontSize: width * 0.038,
                                  fontWeight: FontWeight.w500,
                                  color: AppColors.appWhite,
                                ),
                              ),
                            ],
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
                                const EdgeInsets.symmetric(horizontal: 4.0),
                            itemBuilder: (context, _) => const Icon(
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
                  Padding(
                    padding: const EdgeInsets.all(25),
                    child: Align(
                      alignment: Alignment.bottomRight,
                      child: Icon(
                        Icons.bookmark_border,
                        color: AppColors.appWhite,
                        size: width * 0.08,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: height * 0.02),
            Expanded(
              child: SizedBox(
                width: width * 0.9,
                child: Text(
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
                  style: GoogleFonts.lexend(
                    fontWeight: FontWeight.w500,
                    fontSize: width * 0.038,
                    color: Colors.grey,
                  ),
                  textAlign: TextAlign.justify,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: width * 0.05),
              child: Row(
                children: [
                  Image.asset(
                    IconsPath.calender,
                    height: 20,
                    color: AppColors.primaryColors,
                  ),
                  SizedBox(width: width * 0.02),
                  Text(
                    "Friday - Sunday",
                    style: GoogleFonts.lexend(
                      fontSize: width * 0.038,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: height * 0.01),
            Padding(
              padding: EdgeInsets.only(left: width * 0.05),
              child: Row(
                children: [
                  Image.asset(
                    IconsPath.calender,
                    height: 20,
                    color: AppColors.primaryColors,
                  ),
                  SizedBox(width: width * 0.02),
                  Text(
                    "Friday - Sunday",
                    style: GoogleFonts.lexend(
                      fontSize: width * 0.038,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: height * 0.01),
            Padding(
              padding: EdgeInsets.only(left: width * 0.05),
              child: Row(
                children: [
                  Image.asset(
                    IconsPath.flight,
                    height: 20,
                    color: AppColors.primaryColors,
                  ),
                  SizedBox(width: width * 0.02),
                  Text(
                    "Friday - Sunday",
                    style: GoogleFonts.lexend(
                      fontSize: width * 0.038,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            SizedBox(
              height: height * 0.15,
              width: width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 20,
                    width: 20,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                        color: AppColors.primaryColors,
                        width: 2,
                      ),
                    ),
                    child: Center(
                      child: Text(
                        "\$9,50.00",
                        style: GoogleFonts.lexend(
                          fontSize: width * 0.05,
                          fontWeight: FontWeight.w700,
                          color: AppColors.primaryColors,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
