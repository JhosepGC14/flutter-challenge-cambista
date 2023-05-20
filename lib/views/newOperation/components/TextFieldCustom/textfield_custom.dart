import 'package:flutter/material.dart';

class TextFieldCustom extends StatefulWidget {
  const TextFieldCustom({
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
  State<TextFieldCustom> createState() => _TextFieldCustomState();
}

class _TextFieldCustomState extends State<TextFieldCustom> {
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

  _TextFieldCustomState() {
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
          right: 8,
        ),
        decoration: BoxDecoration(
          border: Border.all(
            color: _isFocused ? const Color(0xff1D63FF) : Colors.grey,
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        child: TextFormField(
          initialValue: widget.initialValueInput,
          keyboardType: TextInputType.number,
          onChanged: widget.onChangedInput,
          style: TextStyle(
            fontSize: 22.00,
            fontWeight: FontWeight.bold,
            color: _isFocused ? const Color(0xff1D63FF) : Colors.black,
          ),
          decoration: InputDecoration(
            border: InputBorder.none,
            labelText: widget.title,
            labelStyle: TextStyle(
              color: _isFocused ? const Color(0xff1D63FF) : Colors.grey,
              fontSize: 19.00,
              fontWeight: FontWeight.bold,
            ),
            suffixIcon: Image.network(
              'https://tucambista.pe/_next/image?url=%2F_next%2Fstatic%2Fmedia%2Fusa_flag.64d3aff1.png&w=32&q=75',
              width: 15.00,
              height: 10,
            ),
          ),
        ),
      ),
    );
  }
}
