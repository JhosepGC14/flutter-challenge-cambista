import 'package:flutter/material.dart';
import 'package:flutter_components/views/accounts/accounts.dart';
import 'package:flutter_components/views/benefits/benefits.dart';
import 'package:flutter_components/views/help/help.dart';
import 'package:flutter_components/views/newOperation/new_operation.dart';
import 'package:flutter_components/views/operations/operations.dart';
import '../components/AppBarCustom/appbar_custom.dart';
import '../components/BottomNavigatorBarCustom/bottom_navigator_bar_custom.dart';

class ViewPages extends StatefulWidget {
  const ViewPages({super.key});

  @override
  State<ViewPages> createState() => _ViewPagesState();
}

class _ViewPagesState extends State<ViewPages> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  int currentIndexPage = 2;
  late bool showNavigationDrawer;

  List<Widget> listPages = [
    const OperationsView(),
    const AccountsView(),
    const NewOperationView(),
    const BenefitsView(),
    const HelpView()
  ];

  void onChangePage(int indexPageSelected) {
    setState(() {
      currentIndexPage = indexPageSelected;
    });
  }

  void openDrawer() {
    scaffoldKey.currentState?.openEndDrawer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarCustomWidget(
        openDrawerNavigation: openDrawer,
      ),
      // body: ,
      body: Scaffold(
        key: scaffoldKey,
        bottomNavigationBar: BottomNavigatorBarCustom(
          currentIndexPage: currentIndexPage,
          onChangePage: onChangePage,
        ),
        endDrawer: Drawer(
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(0),
          ),
          child: const Column(
            children: [
              Text('opcion 1'),
              SizedBox(
                height: 20,
              ),
              Text('opcion 1'),
              SizedBox(
                height: 20,
              ),
              Text('opcion 1'),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
        body: listPages[currentIndexPage],
      ),
    );
  }
}
