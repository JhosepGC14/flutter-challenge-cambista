import 'package:flutter/material.dart';
import '../components.dart';

class ContainerNewOperation extends StatefulWidget {
  const ContainerNewOperation({super.key});

  @override
  State<ContainerNewOperation> createState() => _ContainerNewOperationState();
}

class _ContainerNewOperationState extends State<ContainerNewOperation> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Container(
            padding: const EdgeInsets.all(30.00),
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                StepperNewOperation(),
                SizedBox(
                  height: 20.00,
                ),
                Text(
                  'Cambia ahora',
                  style: TextStyle(
                    fontSize: 17.00,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 20.00,
                ),
                FormExchange(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
