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
  List<BottomNavigationBarItem> items_views = const [
    BottomNavigationBarItem(
      icon: Icon(Icons.swap_horiz_outlined),
      label: 'Operaciones',
      activeIcon: Icon(
        Icons.swap_horiz_outlined,
        color: Color(0xff1D63FF),
      ),
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.credit_card_outlined),
      label: 'Cuentas',
      activeIcon: Icon(
        Icons.credit_card_outlined,
        color: Color(0xff1D63FF),
      ),
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.add_circle_outline),
      label: 'Nueva operación',
      activeIcon: Icon(
        Icons.add_circle_outline,
        color: Color(0xff1D63FF),
      ),
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.wine_bar_outlined),
      label: 'Beneficios',
      activeIcon: Icon(
        Icons.wine_bar_outlined,
        color: Color(0xff1D63FF),
      ),
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.help_outline),
      label: 'Ayuda',
      activeIcon: Icon(
        Icons.help_outline,
        color: Color(0xff1D63FF),
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(
            color: Colors.grey[350]!,
            width: 1.0,
          ),
        ),
      ),
      child: BottomNavigationBar(
        currentIndex: widget.currentIndexPage,
        onTap: widget.onChangePage,
        type: BottomNavigationBarType.fixed,
        elevation: 0,
        unselectedFontSize: 11.0,
        selectedFontSize: 11.0,
        selectedLabelStyle: const TextStyle(
          color: Color(0xff1D63FF),
        ),
        items: items_views,
      ),
    );
  }
}
