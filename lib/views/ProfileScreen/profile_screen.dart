import 'package:e_commerce/utils/color.dart';
import 'package:flutter/material.dart';

import 'Widget/CustomContainer.dart';
import 'Widget/row_widget.dart';
import 'Widget/see_all_widget.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    var theme = Theme.of(context);
    var large = theme.textTheme.bodyLarge;
    var medium = theme.textTheme.bodyMedium;
    var small = theme.textTheme.bodySmall;
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: NavigationBar(destinations: [
          NavigationDestination(icon:Image.asset("assets/images/icon_image/icon_eight.png") , label: 'home', ),
          NavigationDestination(icon:Image.asset("assets/images/icon_image/icon_seven.png") , label: 'wishlist', ),
          NavigationDestination(icon:Image.asset("assets/images/icon_image/icon_five.png") , label: 'category', ),
        ]),
        
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RowWidget(size: size, small: small),
                SizedBox(
                  height: size.height * .01,
                ),
                Text(
                  "Hello,Ramina!",
                  style: medium?.copyWith(
                    fontSize: size.height * .04,
                  ),
                ),
                SizedBox(
                  height: size.height * .02,
                ),
                Text(
                  "Announcement",
                  style: medium,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Lorem Ipsum is simply \n"
                      "dummy text of the printing",
                      style: small,
                    ),
                    Image.asset("assets/images/Button.png"),
                  ],
                ),
                SizedBox(
                  height: size.height * .02,
                ),
                Text(
                  "Recently Viewed",
                  style: medium,
                ),
                SizedBox(
                  height: size.height * .1,
                  child: ListView.separated(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return Image.asset(
                          "assets/images/circle_image/circle_image_one.png");
                    },
                    separatorBuilder: (context, index) {
                      return const SizedBox(
                        width: 1,
                      );
                    },
                  ),
                ),
                Text(
                  "My Orders",
                  style: medium,
                ),
                SizedBox(
                  height: size.height * .02,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomContainer(
                      size: size,
                      small: small,
                      text: 'To Pay',
                    ),
                    CustomContainer(
                      size: size,
                      small: small,
                      text: 'To Receive',
                    ),
                    CustomContainer(
                      size: size,
                      small: small,
                      text: 'To Review',
                    ),
                  ],
                ),
                SizedBox(
                  height: size.height * .03,
                ),
                Text(
                  "Stories",
                  style: medium,
                ),
                SizedBox(
                  height: size.height * .01,
                ),
                SizedBox(
                  height: size.height * .2,
                  child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: 20,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Image.asset(
                            "assets/images/circle_image/StoriesOne.png");
                      }),
                ),
                SizedBox(
                  height: size.height * .01,
                ),
                SeeAllWidget(
                  medium: medium,
                  size: size,
                  text: 'New Items',
                ),
                SizedBox(
                  height: size.height * .28,
                  child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: 20,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                                "assets/images/circle_image/items_one.png"),
                            Text(
                              "Lorem Ipsum is \n"
                              "dummy text",
                              style: small,
                            ),
                            Text(
                              "\$200",
                              style:
                                  small?.copyWith(fontWeight: FontWeight.w500),
                            )
                          ],
                        );
                      }),
                ),
                SeeAllWidget(
                  medium: medium,
                  size: size,
                  text: 'Most Popular',
                ),
                SizedBox(height: size.height*.01,),
                SizedBox(
                  height: size.height * .25,
                  child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: 20,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                                "assets/images/circle_image/popular_one.png"),
                            SizedBox(height: size.height*.01,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      "\$200",
                                      style: small?.copyWith(
                                          fontWeight: FontWeight.w500),
                                    ),
                                    Icon(
                                      Icons.favorite,
                                      color: AppColors.primaryColor,
                                      size: size.height * .02,
                                    ),
                                  ],
                                ),
                         SizedBox(width: size.width*.07,),
                                Text("New", style: small),
                              ],
                            )
                          ],
                        );
                      }),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
