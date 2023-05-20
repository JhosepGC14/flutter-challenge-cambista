import 'package:flutter/material.dart';

class OperationsView extends StatefulWidget {
  const OperationsView({super.key});

  @override
  State<OperationsView> createState() => _OperationsViewState();
}

class _OperationsViewState extends State<OperationsView> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Operations View'),
    );
  }
}
