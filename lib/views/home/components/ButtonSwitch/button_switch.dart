import 'package:flutter/material.dart';

class ButtonSwitch extends StatefulWidget {
  const ButtonSwitch({
    super.key,
    required this.title,
    required this.selected,
    required this.value,
    required this.callback,
  });

  final String title;
  final String value;
  final bool selected;
  final void Function(String) callback;

  @override
  State<ButtonSwitch> createState() => _ButtonSwitchState();
}

class _ButtonSwitchState extends State<ButtonSwitch> {
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        chipTheme: const ChipThemeData(
          padding: EdgeInsets.symmetric(
            vertical: 5.0,
            horizontal: 8.0,
          ),
        ),
      ),
      child: FilterChip(
        selected: widget.selected,
        onSelected: (isSelected) => {
          widget.callback(widget.value),
        },
        showCheckmark: false,
        labelPadding: const EdgeInsets.symmetric(
          horizontal: 0,
          vertical: 0,
        ),
        avatar: Icon(
          Icons.help,
          color: widget.selected ? Colors.white : Colors.grey,
        ),
        label: Text(
          widget.title,
          style: TextStyle(
            color: widget.selected ? Colors.white : Colors.black,
          ),
        ),
        selectedColor: const Color(0xff1D63FF),
        side: const BorderSide(width: 1.00, color: Colors.white),
      ),
    );
  }
}
