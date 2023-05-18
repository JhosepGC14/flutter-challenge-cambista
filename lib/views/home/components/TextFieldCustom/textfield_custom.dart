import 'package:flutter/material.dart';

class TextFieldCustom extends StatefulWidget {
  const TextFieldCustom({
    super.key,
  });

  @override
  State<TextFieldCustom> createState() => _TextFieldCustomState();
}

class _TextFieldCustomState extends State<TextFieldCustom> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      initialValue: '500.00',
      keyboardType: TextInputType.number,
      style: const TextStyle(
        fontSize: 22.00,
        fontWeight: FontWeight.bold,
      ),
      decoration: InputDecoration(
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            style: BorderStyle.solid,
            color: Color(0xff1D63FF),
            width: 2.0,
          ),
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
        ),
        border: const OutlineInputBorder(
          borderSide: BorderSide(
            style: BorderStyle.solid,
            color: Color(0xff1D63FF),
          ),
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
        ),
        labelText: 'Tu envías soles',
        labelStyle: const TextStyle(
          color: Color(0xff1D63FF),
          fontSize: 18.00,
        ),
        prefixIcon: const Icon(Icons.currency_bitcoin),
        prefixIconColor: const Color(0xff1D63FF),
        suffixIcon: Image.network(
          'https://tucambista.pe/_next/image?url=%2F_next%2Fstatic%2Fmedia%2Fusa_flag.64d3aff1.png&w=32&q=75',
          width: 15.00,
          height: 10,
        ),
      ),
    );
  }
}
