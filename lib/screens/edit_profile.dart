import 'package:find_flames/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({super.key});

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  final TextEditingController textEditingController = TextEditingController();
  int length = 0;
  final List<String> languages = [
    'Hindi',
    'English',
    'Marathi',
    'Tamil',
    'Urdu',
    'Telgu',
    'Kannada'
  ];

  final List<String> interests = [
    "❤ Romance",
    "😆 Comedy",
    "🛸 Sci-Fi",
    "🍟 Fast Food",
    "🍦 Dessert"
  ];

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: AppColors.appBackgroundColor,
      appBar: AppBar(
        backgroundColor: AppColors.appBackgroundColor,
        elevation: 0,
        leading: Padding(
          padding:
              EdgeInsets.fromLTRB(width * .0455, width * .025, 0, width * .025),
          child: Container(
            // padding: EdgeInsets.only(left: width * .02),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: AppColors.appGreyColor,
            ),
            child: const Center(
              child: Icon(
                Icons.arrow_back_ios_new_outlined,
                color: Colors.black,
                size: 17,
              ),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
              vertical: height * .01, horizontal: width * .05),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              gridView(),
              Container(
                padding: EdgeInsets.symmetric(vertical: height * .02),
                child: Text(
                  "About",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      color: AppColors.greyTextColor, fontSize: height * .0235),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: width * .04),
                margin: EdgeInsets.only(bottom: height * .01),
                width: double.infinity,
                height: height * .23,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: AppColors.lightPinkColor,
                ),
                child: TextField(
                  onChanged: (value) {
                    setState(() {
                      length = value.length;
                    });
                  },
                  maxLength: 200,
                  maxLines: null,
                  cursorColor: AppColors.darkPinkColor,
                  decoration: InputDecoration(
                      hintText: '"Tell them about you"',
                      hintStyle: TextStyle(
                        color: AppColors.greyTextColor,
                        fontSize: height * .023,
                      ),
                      border: InputBorder.none,
                      counterText: ''),
                  style: TextStyle(
                      color: AppColors.greyTextColor, fontSize: height * .023),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "$length/200",
                    style: TextStyle(
                        color: AppColors.greyTextColor, fontSize: height * .02),
                  ),
                  SizedBox(
                    width: width * .025,
                  ),
                ],
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: height * .02),
                child: Text(
                  "Basics",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: AppColors.greyTextColor,
                    fontSize: height * .0235,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: height * .018),
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: width * 0.1,
                      width: width * 0.1,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: AppColors.lightPinkColor,
                      ),
                      child: Icon(
                        Iconsax.briefcase,
                        size: width * 0.06,
                        color: AppColors.blackTextColor,
                      ),
                    ),
                    SizedBox(
                      width: width * .035,
                    ),
                    Expanded(
                      child: Text(
                        "Education",
                        style: TextStyle(
                          color: AppColors.blackTextColor,
                          fontSize: height * .02,
                        ),
                      ),
                    ),
                    Text(
                      "Add",
                      style: TextStyle(
                        color: AppColors.addColor,
                        fontSize: height * .02,
                      ),
                    ),
                    SizedBox(
                      width: width * .025,
                    ),
                    Container(
                      height: width * 0.08,
                      width: width * .08,
                      padding: EdgeInsets.all(width * 0.02),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7),
                          color: AppColors.appGreyColor),
                      child: Icon(
                        Icons.arrow_forward_ios,
                        size: width * 0.035,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: height * .018),
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: width * 0.1,
                      width: width * 0.1,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: AppColors.lightPinkColor,
                      ),
                      child: Icon(
                        Icons.man,
                        size: width * 0.06,
                        color: AppColors.blackTextColor,
                      ),
                    ),
                    SizedBox(
                      width: width * .035,
                    ),
                    Expanded(
                      child: Text(
                        "Gender",
                        style: TextStyle(
                          color: AppColors.blackTextColor,
                          fontSize: height * .02,
                        ),
                      ),
                    ),
                    Text(
                      "Male",
                      style: TextStyle(
                        color: AppColors.darkPinkColor,
                        fontSize: height * .02,
                      ),
                    ),
                    SizedBox(
                      width: width * .025,
                    ),
                    Container(
                      height: width * 0.08,
                      width: width * .08,
                      padding: EdgeInsets.all(width * 0.02),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7),
                          color: AppColors.lightPinkColor),
                      child: Icon(
                        Icons.arrow_forward_ios,
                        color: AppColors.darkPinkColor,
                        size: width * 0.035,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: height * .018),
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: width * 0.1,
                      width: width * 0.1,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: AppColors.lightPinkColor,
                      ),
                      child: Icon(
                        Icons.network_wifi_2_bar_sharp,
                        size: width * 0.06,
                        color: AppColors.blackTextColor,
                      ),
                    ),
                    SizedBox(
                      width: width * .035,
                    ),
                    Expanded(
                      child: Text(
                        "Orientation",
                        style: TextStyle(
                          color: AppColors.blackTextColor,
                          fontSize: height * .02,
                        ),
                      ),
                    ),
                    Text(
                      "Straight",
                      style: TextStyle(
                        color: AppColors.darkPinkColor,
                        fontSize: height * .02,
                      ),
                    ),
                    SizedBox(
                      width: width * .025,
                    ),
                    Container(
                      height: width * 0.08,
                      width: width * .08,
                      padding: EdgeInsets.all(width * 0.02),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7),
                          color: AppColors.lightPinkColor),
                      child: Icon(
                        Icons.arrow_forward_ios,
                        color: AppColors.darkPinkColor,
                        size: width * 0.035,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: height * .018),
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: width * 0.1,
                      width: width * 0.1,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: AppColors.lightPinkColor,
                      ),
                      child: Icon(
                        Iconsax.book_square,
                        size: width * 0.06,
                        color: AppColors.blackTextColor,
                      ),
                    ),
                    SizedBox(
                      width: width * .035,
                    ),
                    Expanded(
                      child: Text(
                        "Work",
                        style: TextStyle(
                          color: AppColors.blackTextColor,
                          fontSize: height * .02,
                        ),
                      ),
                    ),
                    Text(
                      "Add",
                      style: TextStyle(
                        color: AppColors.addColor,
                        fontSize: height * .02,
                      ),
                    ),
                    SizedBox(
                      width: width * .025,
                    ),
                    Container(
                      height: width * 0.08,
                      width: width * .08,
                      padding: EdgeInsets.all(width * 0.02),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7),
                          color: AppColors.appGreyColor),
                      child: Icon(
                        Icons.arrow_forward_ios,
                        size: width * 0.035,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: height * .02),
                child: Text(
                  "Additional Information",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: AppColors.greyTextColor,
                    fontSize: height * .0235,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: height * .018),
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: width * 0.1,
                      width: width * 0.1,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: AppColors.lightPinkColor,
                      ),
                      child: Icon(
                        Icons.child_care,
                        size: width * 0.06,
                        color: AppColors.blackTextColor,
                      ),
                    ),
                    SizedBox(
                      width: width * .035,
                    ),
                    Expanded(
                      child: Text(
                        "Childern",
                        style: TextStyle(
                          color: AppColors.blackTextColor,
                          fontSize: height * .02,
                        ),
                      ),
                    ),
                    Text(
                      "Add",
                      style: TextStyle(
                        color: AppColors.addColor,
                        fontSize: height * .02,
                      ),
                    ),
                    SizedBox(
                      width: width * .025,
                    ),
                    Container(
                      height: width * 0.08,
                      width: width * .08,
                      padding: EdgeInsets.all(width * 0.02),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7),
                          color: AppColors.appGreyColor),
                      child: Icon(
                        Icons.arrow_forward_ios,
                        size: width * 0.035,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: height * .018),
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: width * 0.1,
                      width: width * 0.1,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: AppColors.lightPinkColor,
                      ),
                      child: Icon(
                        Iconsax.message_2,
                        size: width * 0.06,
                        color: AppColors.blackTextColor,
                      ),
                    ),
                    SizedBox(
                      width: width * .035,
                    ),
                    Expanded(
                      child: Text(
                        "Conversation",
                        style: TextStyle(
                          color: AppColors.blackTextColor,
                          fontSize: height * .02,
                        ),
                      ),
                    ),
                    Text(
                      "Hit me up....",
                      style: TextStyle(
                        color: AppColors.darkPinkColor,
                        fontSize: height * .02,
                      ),
                    ),
                    SizedBox(
                      width: width * .025,
                    ),
                    Container(
                      height: width * 0.08,
                      width: width * .08,
                      padding: EdgeInsets.all(width * 0.02),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7),
                          color: AppColors.lightPinkColor),
                      child: Icon(
                        Icons.arrow_forward_ios,
                        color: AppColors.darkPinkColor,
                        size: width * 0.035,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: height * .018),
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: width * 0.1,
                      width: width * 0.1,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: AppColors.lightPinkColor,
                      ),
                      child: Icon(
                        Icons.wine_bar,
                        size: width * 0.06,
                        color: AppColors.blackTextColor,
                      ),
                    ),
                    SizedBox(
                      width: width * .035,
                    ),
                    Expanded(
                      child: Text(
                        "Drink",
                        style: TextStyle(
                          color: AppColors.blackTextColor,
                          fontSize: height * .02,
                        ),
                      ),
                    ),
                    Text(
                      "Add",
                      style: TextStyle(
                        color: AppColors.addColor,
                        fontSize: height * .02,
                      ),
                    ),
                    SizedBox(
                      width: width * .025,
                    ),
                    Container(
                      height: width * 0.08,
                      width: width * .08,
                      padding: EdgeInsets.all(width * 0.02),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7),
                          color: AppColors.appGreyColor),
                      child: Icon(
                        Icons.arrow_forward_ios,
                        size: width * 0.035,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: height * .018),
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: width * 0.1,
                      width: width * 0.1,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: AppColors.lightPinkColor,
                      ),
                      child: Icon(
                        Icons.straighten,
                        size: width * 0.06,
                        color: AppColors.blackTextColor,
                      ),
                    ),
                    SizedBox(
                      width: width * .035,
                    ),
                    Expanded(
                      child: Text(
                        "Height",
                        style: TextStyle(
                          color: AppColors.blackTextColor,
                          fontSize: height * .02,
                        ),
                      ),
                    ),
                    Text(
                      "Add",
                      style: TextStyle(
                        color: AppColors.addColor,
                        fontSize: height * .02,
                      ),
                    ),
                    SizedBox(
                      width: width * .025,
                    ),
                    Container(
                      height: width * 0.08,
                      width: width * .08,
                      padding: EdgeInsets.all(width * 0.02),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7),
                          color: AppColors.appGreyColor),
                      child: Icon(
                        Icons.arrow_forward_ios,
                        size: width * 0.035,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: height * .018),
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: width * 0.1,
                      width: width * 0.1,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: AppColors.lightPinkColor,
                      ),
                      child: Icon(
                        Iconsax.heart_search,
                        size: width * 0.06,
                        color: AppColors.blackTextColor,
                      ),
                    ),
                    SizedBox(
                      width: width * .035,
                    ),
                    Expanded(
                      child: Text(
                        "Looking for",
                        style: TextStyle(
                          color: AppColors.blackTextColor,
                          fontSize: height * .02,
                        ),
                      ),
                    ),
                    Text(
                      "Casual....",
                      style: TextStyle(
                        color: AppColors.darkPinkColor,
                        fontSize: height * .02,
                      ),
                    ),
                    SizedBox(
                      width: width * .025,
                    ),
                    Container(
                      height: width * 0.08,
                      width: width * .08,
                      padding: EdgeInsets.all(width * 0.02),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7),
                          color: AppColors.lightPinkColor),
                      child: Icon(
                        Icons.arrow_forward_ios,
                        color: AppColors.darkPinkColor,
                        size: width * 0.035,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: height * .018),
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: width * 0.1,
                      width: width * 0.1,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: AppColors.lightPinkColor,
                      ),
                      child: Icon(
                        Icons.gavel,
                        size: width * 0.06,
                        color: AppColors.blackTextColor,
                      ),
                    ),
                    SizedBox(
                      width: width * .035,
                    ),
                    Expanded(
                      child: Text(
                        "Political Preference",
                        style: TextStyle(
                          color: AppColors.blackTextColor,
                          fontSize: height * .02,
                        ),
                      ),
                    ),
                    Text(
                      "Add",
                      style: TextStyle(
                        color: AppColors.addColor,
                        fontSize: height * .02,
                      ),
                    ),
                    SizedBox(
                      width: width * .025,
                    ),
                    Container(
                      height: width * 0.08,
                      width: width * .08,
                      padding: EdgeInsets.all(width * 0.02),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7),
                          color: AppColors.appGreyColor),
                      child: Icon(
                        Icons.arrow_forward_ios,
                        size: width * 0.035,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: height * .018),
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: width * 0.1,
                      width: width * 0.1,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: AppColors.lightPinkColor,
                      ),
                      child: Icon(
                        Iconsax.personalcard,
                        size: width * 0.06,
                        color: AppColors.blackTextColor,
                      ),
                    ),
                    SizedBox(
                      width: width * .035,
                    ),
                    Expanded(
                      child: Text(
                        "Pronouns",
                        style: TextStyle(
                          color: AppColors.blackTextColor,
                          fontSize: height * .02,
                        ),
                      ),
                    ),
                    Text(
                      "Add",
                      style: TextStyle(
                        color: AppColors.addColor,
                        fontSize: height * .02,
                      ),
                    ),
                    SizedBox(
                      width: width * .025,
                    ),
                    Container(
                      height: width * 0.08,
                      width: width * .08,
                      padding: EdgeInsets.all(width * 0.02),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7),
                          color: AppColors.appGreyColor),
                      child: Icon(
                        Icons.arrow_forward_ios,
                        size: width * 0.035,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: height * .018),
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: width * 0.1,
                      width: width * 0.1,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: AppColors.lightPinkColor,
                      ),
                      child: Icon(
                        Icons.temple_hindu,
                        size: width * 0.06,
                        color: AppColors.blackTextColor,
                      ),
                    ),
                    SizedBox(
                      width: width * .035,
                    ),
                    Expanded(
                      child: Text(
                        "Religion",
                        style: TextStyle(
                          color: AppColors.blackTextColor,
                          fontSize: height * .02,
                        ),
                      ),
                    ),
                    Text(
                      "Add",
                      style: TextStyle(
                        color: AppColors.addColor,
                        fontSize: height * .02,
                      ),
                    ),
                    SizedBox(
                      width: width * .025,
                    ),
                    Container(
                      height: width * 0.08,
                      width: width * .08,
                      padding: EdgeInsets.all(width * 0.02),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7),
                          color: AppColors.appGreyColor),
                      child: Icon(
                        Icons.arrow_forward_ios,
                        size: width * 0.035,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: height * .018),
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: width * 0.1,
                      width: width * 0.1,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: AppColors.lightPinkColor,
                      ),
                      child: Icon(
                        Icons.smoking_rooms,
                        size: width * 0.06,
                        color: AppColors.blackTextColor,
                      ),
                    ),
                    SizedBox(
                      width: width * .035,
                    ),
                    Expanded(
                      child: Text(
                        "Smoke",
                        style: TextStyle(
                          color: AppColors.blackTextColor,
                          fontSize: height * .02,
                        ),
                      ),
                    ),
                    Text(
                      "Add",
                      style: TextStyle(
                        color: AppColors.addColor,
                        fontSize: height * .02,
                      ),
                    ),
                    SizedBox(
                      width: width * .025,
                    ),
                    Container(
                      height: width * 0.08,
                      width: width * .08,
                      padding: EdgeInsets.all(width * 0.02),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7),
                          color: AppColors.appGreyColor),
                      child: Icon(
                        Icons.arrow_forward_ios,
                        size: width * 0.035,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: height * .018),
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: width * 0.1,
                      width: width * 0.1,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: AppColors.lightPinkColor,
                      ),
                      child: Icon(
                        Iconsax.weight,
                        size: width * 0.06,
                        color: AppColors.blackTextColor,
                      ),
                    ),
                    SizedBox(
                      width: width * .035,
                    ),
                    Expanded(
                      child: Text(
                        "Workout",
                        style: TextStyle(
                          color: AppColors.blackTextColor,
                          fontSize: height * .02,
                        ),
                      ),
                    ),
                    Text(
                      "Add",
                      style: TextStyle(
                        color: AppColors.addColor,
                        fontSize: height * .02,
                      ),
                    ),
                    SizedBox(
                      width: width * .025,
                    ),
                    Container(
                      height: width * 0.08,
                      width: width * .08,
                      padding: EdgeInsets.all(width * 0.02),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7),
                          color: AppColors.appGreyColor),
                      child: Icon(
                        Icons.arrow_forward_ios,
                        size: width * 0.035,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: height * .018),
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: width * 0.1,
                      width: width * 0.1,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: AppColors.lightPinkColor,
                      ),
                      child: Icon(
                        Iconsax.hierarchy,
                        size: width * 0.06,
                        color: AppColors.blackTextColor,
                      ),
                    ),
                    SizedBox(
                      width: width * .035,
                    ),
                    Expanded(
                      child: Text(
                        "Zodiac",
                        style: TextStyle(
                          color: AppColors.blackTextColor,
                          fontSize: height * .02,
                        ),
                      ),
                    ),
                    Text(
                      "Add",
                      style: TextStyle(
                        color: AppColors.addColor,
                        fontSize: height * .02,
                      ),
                    ),
                    SizedBox(
                      width: width * .025,
                    ),
                    Container(
                      height: width * 0.08,
                      width: width * .08,
                      padding: EdgeInsets.all(width * 0.02),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7),
                          color: AppColors.appGreyColor),
                      child: Icon(
                        Icons.arrow_forward_ios,
                        size: width * 0.035,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: height * .018),
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: width * 0.1,
                      width: width * 0.1,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: AppColors.lightPinkColor,
                      ),
                      child: Icon(
                        Iconsax.location,
                        size: width * 0.06,
                        color: AppColors.blackTextColor,
                      ),
                    ),
                    SizedBox(
                      width: width * .035,
                    ),
                    Expanded(
                      child: Text(
                        "Living in",
                        style: TextStyle(
                          color: AppColors.blackTextColor,
                          fontSize: height * .02,
                        ),
                      ),
                    ),
                    Text(
                      "Add",
                      style: TextStyle(
                        color: AppColors.addColor,
                        fontSize: height * .02,
                      ),
                    ),
                    SizedBox(
                      width: width * .025,
                    ),
                    Container(
                      height: width * 0.08,
                      width: width * .08,
                      padding: EdgeInsets.all(width * 0.02),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7),
                          color: AppColors.appGreyColor),
                      child: Icon(
                        Icons.arrow_forward_ios,
                        size: width * 0.035,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: height * .02),
                child: Row(
                  children: [
                    Expanded(
                      child: Text(
                        "Languages",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            // fontFamily: 'NunitoSans',
                            color: AppColors.greyTextColor,
                            fontSize: height * .0235),
                      ),
                    ),
                    Container(
                      height: width * 0.08,
                      width: width * .08,
                      padding: EdgeInsets.all(width * 0.01),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7),
                          color: AppColors.appGreyColor),
                      child: Icon(
                        Icons.add,
                        size: width * 0.05,
                      ),
                    ),
                  ],
                ),
              ),
              Wrap(
                children: languages.map((language) {
                  return Container(
                    margin: EdgeInsets.symmetric(
                        horizontal: width * .01, vertical: height * .001),
                    padding: EdgeInsets.symmetric(
                        vertical: height * .005, horizontal: width * .02),
                    decoration: BoxDecoration(
                      border:
                          Border.all(color: AppColors.darkPinkColor, width: 1),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text(
                      language,
                      style: TextStyle(
                        fontSize: width * 0.05,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
                  );
                }).toList(),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: height * .02),
                child: Row(
                  children: [
                    Expanded(
                      child: Text(
                        "Interests",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            // fontFamily: 'NunitoSans',
                            color: AppColors.greyTextColor,
                            fontSize: height * .0235),
                      ),
                    ),
                    Container(
                      height: width * 0.08,
                      width: width * .08,
                      padding: EdgeInsets.all(width * 0.01),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7),
                          color: AppColors.appGreyColor),
                      child: Icon(
                        Icons.add,
                        size: width * 0.05,
                      ),
                    ),
                  ],
                ),
              ),
              Wrap(
                children: interests.map((interest) {
                  return Container(
                    margin: EdgeInsets.symmetric(
                        horizontal: width * .01, vertical: height * .001),
                    padding: EdgeInsets.symmetric(
                        vertical: height * .005, horizontal: width * .02),
                    decoration: BoxDecoration(
                      border:
                          Border.all(color: AppColors.darkPinkColor, width: 1),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text(
                      interest,
                      style: TextStyle(
                        fontSize: width * 0.05,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
                  );
                }).toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget gridView() {
    double widthRatio = MediaQuery.of(context).size.width / 445;
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(right: 10 * widthRatio),
          width: 230 * widthRatio,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 10 * widthRatio),
                width: double.infinity,
                height: 230 * widthRatio,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10 * widthRatio),
                  color: AppColors.lightPinkColor,
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10 * widthRatio),
                  child: const Image(
                    image: AssetImage(
                      "assets/images/img.png",
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 10 * widthRatio),
                      width: 110 * widthRatio,
                      height: 110 * widthRatio,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10 * widthRatio),
                        color: AppColors.lightPinkColor,
                      ),
                      child: const Center(
                        child: Icon(
                          Icons.add_circle_outline,
                          color: AppColors.darkPinkColor,
                        ),
                      ),
                    ),
                    Container(
                      width: 110 * widthRatio,
                      height: 110 * widthRatio,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10 * widthRatio),
                        color: AppColors.lightPinkColor,
                      ),
                      child: const Center(
                        child: Icon(
                          Icons.add_circle_outline,
                          color: AppColors.darkPinkColor,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          width: 160 * widthRatio,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 10 * widthRatio),
                width: double.infinity,
                height: 160 * widthRatio,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10 * widthRatio),
                  color: AppColors.lightPinkColor,
                ),
                child: const Center(
                  child: Icon(
                    Icons.add_circle_outline,
                    color: AppColors.darkPinkColor,
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                height: 180 * widthRatio,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10 * widthRatio),
                  color: AppColors.lightPinkColor,
                ),
                child: const Center(
                  child: Icon(
                    Icons.add_circle_outline,
                    color: AppColors.darkPinkColor,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
