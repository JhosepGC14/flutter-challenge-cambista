import 'package:flutter/material.dart';

class TextFieldCupon extends StatefulWidget {
  const TextFieldCupon({
    super.key,
    required this.title,
    required this.initialValueInput,
    required this.onChangedInput,
  });
  //props
  final String title;
  final String initialValueInput;
  final Function(String) onChangedInput;

  @override
  State<TextFieldCupon> createState() => _TextFieldCuponState();
}

class _TextFieldCuponState extends State<TextFieldCupon> {
  late FocusNode _focusNode;
  bool _isFocused = false;

  @override
  void initState() {
    super.initState();
    _focusNode = FocusNode();
    _focusNode.addListener(_handleFocusChange);
  }

  @override
  void dispose() {
    _focusNode.removeListener(_handleFocusChange);
    _focusNode.dispose();
    super.dispose();
  }

  void _handleFocusChange() {
    setState(() {
      _isFocused = _focusNode.hasFocus;
    });
  }

  _TextFieldCuponState() {
    _focusNode = FocusNode();
  }

  @override
  Widget build(BuildContext context) {
    return Focus(
      focusNode: _focusNode,
      child: Container(
        padding: const EdgeInsets.only(
          top: 0,
          bottom: 0,
          left: 15,
          right: 1,
        ),
        decoration: BoxDecoration(
          border: Border.all(
            color: _isFocused ? Colors.grey : Colors.grey,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        child: TextFormField(
          initialValue: widget.initialValueInput,
          keyboardType: TextInputType.number,
          onChanged: widget.onChangedInput,
          style: const TextStyle(
            fontSize: 13.00,
            fontWeight: FontWeight.normal,
            color: Colors.black54,
          ),
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.only(top: 8, bottom: 8),
            border: InputBorder.none,
            labelText: widget.title,
            labelStyle: TextStyle(
              color: _isFocused ? const Color(0xFF00297B) : Colors.grey,
              fontSize: 15.00,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
