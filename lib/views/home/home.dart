import 'package:flutter/material.dart';

import 'components/AppBarCustom/appbar_custom.dart';
import 'components/ContainerHome/container_home.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarCustomWidget(),
      body: ContainerHome(title: widget.title),
    );
  }
}
