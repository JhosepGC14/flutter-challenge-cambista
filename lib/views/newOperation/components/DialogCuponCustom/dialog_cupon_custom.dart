import 'package:flutter/material.dart';
import 'package:flutter_components/views/newOperation/components/TextFieldCustom/textfield_custom.dart';

class DialogCuponCustom extends StatefulWidget {
  const DialogCuponCustom({super.key});

  @override
  State<DialogCuponCustom> createState() => _DialogCuponCustomState();
}

class _DialogCuponCustomState extends State<DialogCuponCustom> {
  String? cuponDiscount = '';

  void onChangeCupon(String newValue) {
    setState(() {
      cuponDiscount = newValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(10.0),
          ),
          color: Colors.white,
        ),
        padding: const EdgeInsets.all(25),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              'Cupón de descuento',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            const SizedBox(height: 16),
            // TODO: cambiar este input con uno mediano
            TextFieldCustom(
              title: 'Ingresa el cupón de descuento',
              onChangedInput: onChangeCupon,
              initialValueInput: '',
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              child: const Text('Close'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        ),
      ),
    );
  }
}
