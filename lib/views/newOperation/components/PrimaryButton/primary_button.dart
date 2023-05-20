import 'package:flutter/material.dart';

class PrimaryButton extends StatefulWidget {
  const PrimaryButton({
    super.key,
  });

  @override
  State<PrimaryButton> createState() => _PrimaryButtonState();
}

class _PrimaryButtonState extends State<PrimaryButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ButtonStyle(
        elevation: const MaterialStatePropertyAll<double>(0.00),
        backgroundColor: const MaterialStatePropertyAll<Color>(
          Color(0xFFFEC700),
        ),
        padding: const MaterialStatePropertyAll<EdgeInsets>(
          EdgeInsets.only(
            top: 13,
            bottom: 13,
            left: 50,
            right: 50,
          ),
        ),
        foregroundColor: const MaterialStatePropertyAll<Color>(
          Colors.white,
        ),
        shape: MaterialStatePropertyAll<OutlinedBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        overlayColor: MaterialStateProperty.resolveWith<Color>(
          (Set<MaterialState> states) {
            if (states.contains(MaterialState.pressed)) {
              return Colors
                  .white12; // Cambia el color de la animación cuando se presiona el botón
            }
            return Colors
                .transparent; // Color transparente por defecto para la animación
          },
        ),
      ),
      child: const Text(
        'Iniciar operación',
        style: TextStyle(
          color: Colors.black,
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
