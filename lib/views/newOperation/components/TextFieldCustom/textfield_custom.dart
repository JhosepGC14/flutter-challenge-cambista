import 'package:flutter/material.dart';
import 'package:flutter_components/utils/constants.dart';

class TextFieldCustom extends StatefulWidget {
  const TextFieldCustom({
    super.key,
    required this.title,
    required this.initialValueInput,
    required this.onChangedInput,
    this.suffixText = 'USD',
    this.suffixIcon = logoUSA,
  });
  //props
  final String title;
  final String initialValueInput;
  final String suffixText;
  final String suffixIcon;
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
              suffixIcon: SizedBox(
                width: 60,
                height: 50,
                child: Row(
                  children: [
                    Text(
                      widget.suffixText,
                      style: const TextStyle(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(
                      width: 7,
                    ),
                    Image.network(
                      widget.suffixIcon,
                      width: 20.00,
                      height: 20,
                    ),
                  ],
                ),
              )),
        ),
      ),
    );
  }
}
