import 'package:flutter/material.dart';

class PrimaryButton extends StatefulWidget {
  const PrimaryButton({super.key, required this.title, this.size = 'l'});

  final String title;
  final String size;

  @override
  State<PrimaryButton> createState() => _PrimaryButtonState();
}

class _PrimaryButtonState extends State<PrimaryButton> {
  @override
  Widget build(BuildContext context) {
    switch (widget.size) {
      case 's':
        return ElevatedButton(
          onPressed: () {},
          style: ButtonStyle(
            minimumSize: const MaterialStatePropertyAll<Size>(
              Size(double.infinity, 35),
            ),
            elevation: const MaterialStatePropertyAll<double>(0.00),
            backgroundColor: const MaterialStatePropertyAll<Color>(
              Color(0xFFFEC700),
            ),
            padding: const MaterialStatePropertyAll<EdgeInsets>(
              EdgeInsets.only(
                top: 5,
                bottom: 5,
                left: 20,
                right: 20,
              ),
            ),
            foregroundColor: const MaterialStatePropertyAll<Color>(
              Colors.white,
            ),
            shape: MaterialStatePropertyAll<OutlinedBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(6),
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
          child: Text(
            widget.title,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 12,
              fontWeight: FontWeight.bold,
            ),
          ),
        );

      case 'm':
        return ElevatedButton(
          onPressed: () {},
          style: ButtonStyle(
            minimumSize: const MaterialStatePropertyAll<Size>(
              Size(double.infinity, 40),
            ),
            elevation: const MaterialStatePropertyAll<double>(0.00),
            backgroundColor: const MaterialStatePropertyAll<Color>(
              Color(0xFFFEC700),
            ),
            padding: const MaterialStatePropertyAll<EdgeInsets>(
              EdgeInsets.only(
                top: 3,
                bottom: 3,
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
          child: Text(
            widget.title,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
        );

      default:
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
          child: Text(
            widget.title,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        );
    }

    // return widget.size == 'm'
    //     ? ElevatedButton(
    //         onPressed: () {},
    //         style: ButtonStyle(
    //           minimumSize: const MaterialStatePropertyAll<Size>(
    //             Size(double.infinity, 40),
    //           ),
    //           elevation: const MaterialStatePropertyAll<double>(0.00),
    //           backgroundColor: const MaterialStatePropertyAll<Color>(
    //             Color(0xFFFEC700),
    //           ),
    //           padding: const MaterialStatePropertyAll<EdgeInsets>(
    //             EdgeInsets.only(
    //               top: 3,
    //               bottom: 3,
    //               left: 50,
    //               right: 50,
    //             ),
    //           ),
    //           foregroundColor: const MaterialStatePropertyAll<Color>(
    //             Colors.white,
    //           ),
    //           shape: MaterialStatePropertyAll<OutlinedBorder>(
    //             RoundedRectangleBorder(
    //               borderRadius: BorderRadius.circular(8),
    //             ),
    //           ),
    //           overlayColor: MaterialStateProperty.resolveWith<Color>(
    //             (Set<MaterialState> states) {
    //               if (states.contains(MaterialState.pressed)) {
    //                 return Colors
    //                     .white12; // Cambia el color de la animación cuando se presiona el botón
    //               }
    //               return Colors
    //                   .transparent; // Color transparente por defecto para la animación
    //             },
    //           ),
    //         ),
    //         child: Text(
    //           widget.title,
    //           style: const TextStyle(
    //             color: Colors.black,
    //             fontSize: 16,
    //             fontWeight: FontWeight.w500,
    //           ),
    //         ),
    //       )
    //     : ElevatedButton(
    //         onPressed: () {},
    //         style: ButtonStyle(
    //           elevation: const MaterialStatePropertyAll<double>(0.00),
    //           backgroundColor: const MaterialStatePropertyAll<Color>(
    //             Color(0xFFFEC700),
    //           ),
    //           padding: const MaterialStatePropertyAll<EdgeInsets>(
    //             EdgeInsets.only(
    //               top: 13,
    //               bottom: 13,
    //               left: 50,
    //               right: 50,
    //             ),
    //           ),
    //           foregroundColor: const MaterialStatePropertyAll<Color>(
    //             Colors.white,
    //           ),
    //           shape: MaterialStatePropertyAll<OutlinedBorder>(
    //             RoundedRectangleBorder(
    //               borderRadius: BorderRadius.circular(8),
    //             ),
    //           ),
    //           overlayColor: MaterialStateProperty.resolveWith<Color>(
    //             (Set<MaterialState> states) {
    //               if (states.contains(MaterialState.pressed)) {
    //                 return Colors
    //                     .white12; // Cambia el color de la animación cuando se presiona el botón
    //               }
    //               return Colors
    //                   .transparent; // Color transparente por defecto para la animación
    //             },
    //           ),
    //         ),
    //         child: Text(
    //           widget.title,
    //           style: const TextStyle(
    //             color: Colors.black,
    //             fontSize: 16,
    //             fontWeight: FontWeight.bold,
    //           ),
    //         ),
    //       );
  }
}
