import 'package:flutter/material.dart';
import 'package:dropdown_button2/dropdown_button2.dart';

class SelectFilterOperations extends StatefulWidget {
  const SelectFilterOperations({super.key});

  @override
  State<SelectFilterOperations> createState() => _SelectFilterOperationsState();
}

class _SelectFilterOperationsState extends State<SelectFilterOperations> {
  String? selectedFilter = 'Todas (Solo Activas)';

  final List<String> genderItems = [
    'Todas (Solo Activas)',
    'Todas (Solo Pendientes)',
    'Todas (Solo Rechazadas)',
  ];

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField2<String>(
      isExpanded: true,
      value: selectedFilter,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.only(
          right: 12,
          left: 2,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(6),
          borderSide: const BorderSide(color: Colors.black45),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(6),
          borderSide: const BorderSide(color: Colors.black45),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black45),
        ),
      ),
      items: genderItems
          .map((item) => DropdownMenuItem<String>(
                value: item,
                child: Text(
                  item,
                  style: const TextStyle(
                    fontSize: 14,
                  ),
                ),
              ))
          .toList(),
      validator: (value) {
        if (value == null) {
          return 'Please select gender.';
        }
        return null;
      },
      onChanged: (value) {
        selectedFilter = value.toString();
      },
      iconStyleData: const IconStyleData(
        icon: Icon(
          Icons.keyboard_arrow_down,
          color: Colors.black45,
        ),
        iconSize: 24,
      ),
    );
  }
}
