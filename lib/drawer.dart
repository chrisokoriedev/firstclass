import 'package:clickcounter/style.dart';
import 'package:clickcounter/widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NavigatorDrawer extends StatelessWidget {
  const NavigatorDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: kBackgroundColor,
      child: Padding(
        padding: kDefaultPadding,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                    child: FlutterLogo(
                  size: 60,
                )),
                space(40),
                menu(
                  'Overview',
                  FontAwesomeIcons.chartPie,
                  kBlackColor,
                  kSecondaryColor,
                ),
                space(10),
                const Divider(),
                space(10),
                menu(
                  'Inspection',
                  Icons.terminal,
                  kBlackColor,
                  kSecondaryColor,
                ),
                space(30),
                menu(
                  'Notifications',
                  Icons.notifications_rounded,
                  kBlackColor,
                  kSecondaryColor,
                ),
                space(30),
                menu(
                  'Maintenance',
                  FontAwesomeIcons.database,
                  kBlackColor,
                  kSecondaryColor,
                ),
                space(30),
                menu(
                  'Wallet',
                  FontAwesomeIcons.wallet,
                  kBlackColor,
                  kSecondaryColor,
                ),
                space(30),
                menu(
                  'Inspection',
                  FontAwesomeIcons.chartBar,
                  kBlackColor,
                  kSecondaryColor,
                ),
                space(30),
                menu(
                  'Logout',
                  FontAwesomeIcons.arrowRightFromBracket,
                  Colors.red,
                  kSecondaryColor,
                ),
              ],
            ),
            Spacer(),
            Row(
              children: [
                CircleAvatar(
                  child: Icon(Icons.person),
                ),
                const SizedBox(width: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "Faith Auto's",
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                    ),
                    Text(
                      "Auto Centre",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: kGreyColor),
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
