import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppBarCustomWidget extends StatefulWidget implements PreferredSizeWidget {
  const AppBarCustomWidget({super.key, required this.openDrawerNavigation});

  final Function() openDrawerNavigation;

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight + 75);

  @override
  State<AppBarCustomWidget> createState() => _AppBarCustomWidgetState();
}

class _AppBarCustomWidgetState extends State<AppBarCustomWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[100],
      width: double.maxFinite,
      child: Container(
        margin: const EdgeInsets.only(top: kTextTabBarHeight + 5),
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 2),
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border(
            bottom: BorderSide(color: Colors.grey[350]!),
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              icon: const Icon(
                Icons.notifications_outlined,
                size: 27,
              ),
              onPressed: () => {},
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  'assets/icons/cambista.svg',
                  height: 25,
                ),
              ],
            ),
            IconButton(
              icon: const Icon(Icons.segment, size: 27),
              onPressed: widget.openDrawerNavigation,
            ),
          ],
        ),
      ),
    );
  }
}
