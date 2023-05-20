import 'package:flutter/material.dart';
import 'components/components.dart';

class NewOperationView extends StatefulWidget {
  const NewOperationView({super.key});

  @override
  State<NewOperationView> createState() => _NewOperationViewState();
}

class _NewOperationViewState extends State<NewOperationView> {
  @override
  Widget build(BuildContext context) {
    return const ContainerNewOperation();
  }
}
