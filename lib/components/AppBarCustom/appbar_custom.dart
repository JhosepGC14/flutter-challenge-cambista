import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppBarCustomWidget extends StatefulWidget implements PreferredSizeWidget {
  const AppBarCustomWidget({super.key, required this.openDrawerNavigation});

  final Function() openDrawerNavigation;

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight + 1);

  @override
  State<AppBarCustomWidget> createState() => _AppBarCustomWidgetState();
}

class _AppBarCustomWidgetState extends State<AppBarCustomWidget> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: Builder(
        builder: (BuildContext context) {
          return IconButton(
            icon: const Icon(Icons.notifications_outlined),
            onPressed: () => print('hi on menu icon'),
          );
        },
      ),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            'assets/icons/cambista.svg',
          ),
        ],
      ),
      actions: <Widget>[
        IconButton(
          icon: const Icon(Icons.segment),
          onPressed: widget.openDrawerNavigation,
        ),
      ],
      elevation: 0,
      backgroundColor: Colors.white,
      toolbarHeight: kToolbarHeight + 1,
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(1.0),
        child: Container(
          color: Colors.grey[350],
          height: 1.0,
        ),
      ),
    );
  }
}
