import 'package:flutter/material.dart';

import '../components.dart';

class ContainerHome extends StatefulWidget {
  const ContainerHome({super.key, required this.title});

  final String title;

  @override
  State<ContainerHome> createState() => _ContainerHomeState();
}

class _ContainerHomeState extends State<ContainerHome> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(35.00),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.title,
            style: const TextStyle(
              fontSize: 17.00,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 30.00,
          ),
          const FormExchange(),
        ],
      ),
    );
  }
}
