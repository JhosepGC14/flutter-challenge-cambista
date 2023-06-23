import 'package:flutter/material.dart';
import 'components/card_operation/card.operation.dart';
import 'components/select_filter_operations/select_filter_operations.dart';

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
          ),
          GestureDetector(
            child: const Row(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  Icons.download_outlined,
                  color: Color(0xff1D63FF),
                  size: 20,
                ),
                SizedBox(
                  width: 6,
                ),
                Text(
                  'Descargar excel',
                  style: TextStyle(
                    color: Color(0xff1D63FF),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          const SelectFilterOperations(),
          const SizedBox(
            height: 35,
          ),
          //Continue CARD
          const CardOperation(),
          const CardOperation(),
          const CardOperation(),
          const CardOperation(),
          const CardOperation(),
          const CardOperation(),
          const CardOperation(),
        ],
      ),
    );
  }
}
