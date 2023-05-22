import 'package:flutter/material.dart';
import 'package:flutter_components/views/newOperation/components/components.dart';

class DialogCuponCustom extends StatefulWidget {
  const DialogCuponCustom({super.key});

  @override
  State<DialogCuponCustom> createState() => _DialogCuponCustomState();
}

class _DialogCuponCustomState extends State<DialogCuponCustom> {
  String? cuponDiscount = '';

  void onChangeCupon(String newValue) {
    setState(() {
      cuponDiscount = newValue.toUpperCase();
    });
  }

  void closeModalCupon(BuildContext context) {
    Navigator.of(context).pop();
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
        child: Stack(children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 30,
              bottom: 30,
              left: 25,
              right: 25,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text(
                  'Cupón de descuento',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                  ),
                ),
                const SizedBox(height: 26),
                TextFieldCupon(
                  title: 'Ingresa el cupón de descuento',
                  initialValueInput: '',
                  onChangedInput: onChangeCupon,
                ),
                const SizedBox(height: 25),
                const PrimaryButton(
                  title: 'Aplicar',
                  size: 'm',
                ),
                const SizedBox(height: 15),
                GestureDetector(
                  onTap: () {
                    closeModalCupon(context);
                  },
                  // ignore: sized_box_for_whitespace
                  child: Container(
                    width: double.infinity,
                    height: 27,
                    child: const Text(
                      'Cancelar',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Positioned(
            top: 10,
            right: 15,
            child: GestureDetector(
              onTap: () {
                closeModalCupon(context);
              },
              child: const Icon(
                Icons.close,
                size: 24,
                color: Colors.black54,
              ),
            ),
          )
        ]),
      ),
    );
  }
}
