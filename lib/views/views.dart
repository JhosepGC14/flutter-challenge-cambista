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
      key: scaffoldKey,
      appBar: AppBarCustomWidget(
        openDrawerNavigation: openDrawer,
      ),
      body: listPages[currentIndexPage],
      bottomNavigationBar: BottomNavigatorBarCustom(
        currentIndexPage: currentIndexPage,
        onChangePage: onChangePage,
      ),
      endDrawer: SafeArea(
        child: Drawer(
          elevation: 0, // Optional: to remove the shadow of the Drawer
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(0), // Set borderRadius to 0
          ),
          child: const NavigationDrawer(
            elevation: 0,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 50),
              ),
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
              Padding(
                padding: EdgeInsets.fromLTRB(28, 16, 28, 10),
                child: Divider(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
