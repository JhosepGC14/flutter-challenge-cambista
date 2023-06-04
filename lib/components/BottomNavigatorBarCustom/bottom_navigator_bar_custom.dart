import 'package:flutter/material.dart';

class BottomNavigatorBarCustom extends StatefulWidget {
  const BottomNavigatorBarCustom(
      {super.key, required this.currentIndexPage, required this.onChangePage});

  final int currentIndexPage;
  final Function(int) onChangePage;

  @override
  State<BottomNavigatorBarCustom> createState() =>
      _BottomNavigatorBarCustomState();
}

class _BottomNavigatorBarCustomState extends State<BottomNavigatorBarCustom> {
  void onTapChangePage(int index) {
    widget.onChangePage(index);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 90,
      padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 10.0),
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(
            color: Colors.grey[350]!,
            width: 1.0,
          ),
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () {
              onTapChangePage(0);
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  Icons.swap_horiz_outlined,
                  color: widget.currentIndexPage == 0
                      ? const Color(0xff1D63FF)
                      : Colors.grey,
                ),
                Text(
                  'Operaciones',
                  style: TextStyle(
                    color: widget.currentIndexPage == 0
                        ? const Color(0xff1D63FF)
                        : Colors.grey,
                    fontSize: 11,
                  ),
                  textAlign: TextAlign.center,
                )
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              onTapChangePage(1);
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  Icons.credit_card_outlined,
                  color: widget.currentIndexPage == 1
                      ? const Color(0xff1D63FF)
                      : Colors.grey,
                ),
                Text(
                  'Cuentas',
                  style: TextStyle(
                    color: widget.currentIndexPage == 1
                        ? const Color(0xff1D63FF)
                        : Colors.grey,
                    fontSize: 11,
                  ),
                  textAlign: TextAlign.center,
                )
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              onTapChangePage(2);
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  Icons.add_circle_outline,
                  color: widget.currentIndexPage == 2
                      ? const Color(0xff1D63FF)
                      : Colors.grey,
                ),
                Text(
                  'Nueva\noperación',
                  style: TextStyle(
                    color: widget.currentIndexPage == 2
                        ? const Color(0xff1D63FF)
                        : Colors.grey,
                    fontSize: 11,
                  ),
                  textAlign: TextAlign.center,
                )
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              onTapChangePage(3);
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  Icons.wine_bar_outlined,
                  color: widget.currentIndexPage == 3
                      ? const Color(0xff1D63FF)
                      : Colors.grey,
                ),
                Text(
                  'Beneficios',
                  style: TextStyle(
                    color: widget.currentIndexPage == 3
                        ? const Color(0xff1D63FF)
                        : Colors.grey,
                    fontSize: 11,
                  ),
                  textAlign: TextAlign.center,
                )
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              onTapChangePage(4);
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  Icons.help_outline,
                  color: widget.currentIndexPage == 4
                      ? const Color(0xff1D63FF)
                      : Colors.grey,
                ),
                Text(
                  'Ayuda',
                  style: TextStyle(
                    color: widget.currentIndexPage == 4
                        ? const Color(0xff1D63FF)
                        : Colors.grey,
                    fontSize: 11,
                  ),
                  textAlign: TextAlign.center,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
