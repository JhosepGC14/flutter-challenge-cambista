import 'package:flutter/material.dart';

class OperationsView extends StatefulWidget {
  const OperationsView({super.key});

  @override
  State<OperationsView> createState() => _OperationsViewState();
}

class _OperationsViewState extends State<OperationsView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 30,
        vertical: 20,
      ),
      child: ListView(
        children: [
          Placeholder(
            fallbackWidth: MediaQuery.of(context).copyWith().size.width,
            fallbackHeight: 80,
          ),
          const SizedBox(
            height: 27,
          ),
          const Text(
            'Mis operaciones',
            style: TextStyle(
              fontSize: 17.00,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 27,
          )
        ],
      ),
    );
  }
}
