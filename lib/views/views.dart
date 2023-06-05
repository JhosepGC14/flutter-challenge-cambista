import 'package:flutter/material.dart';
import 'package:flutter_components/views/accounts/accounts.dart';
import 'package:flutter_components/views/benefits/benefits.dart';
import 'package:flutter_components/views/help/help.dart';
import 'package:flutter_components/views/newOperation/new_operation.dart';
import 'package:flutter_components/views/operations/operations.dart';
import '../components/components.dart';
import 'package:flutter/services.dart';

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

  void onToggleEndDrawer() {
    if (scaffoldKey.currentState?.isEndDrawerOpen == true &&
        scaffoldKey.currentState?.hasEndDrawer == true) {
      scaffoldKey.currentState?.closeEndDrawer();
    } else {
      scaffoldKey.currentState?.openEndDrawer();
    }
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark.copyWith(
      statusBarColor: Colors.transparent,
    ));

    return Scaffold(
      appBar: AppBarCustomWidget(
        openDrawerNavigation: onToggleEndDrawer,
      ),
      body: Scaffold(
        key: scaffoldKey,
        body: listPages[currentIndexPage],
        endDrawer: const DrawerCustom(),
        bottomNavigationBar: BottomNavigatorBarCustom(
          currentIndexPage: currentIndexPage,
          onChangePage: onChangePage,
        ),
      ),
    );
  }
}
