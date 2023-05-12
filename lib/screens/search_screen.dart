import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_app_ui/themes/app_colors.dart';
import 'package:travel_app_ui/themes/card_padding.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  var height, width;
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
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
    );
  }
}
