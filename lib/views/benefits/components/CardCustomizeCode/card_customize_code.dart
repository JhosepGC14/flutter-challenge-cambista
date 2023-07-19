import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_components/views/newOperation/components/components.dart';

class CardCustomizeCode extends StatelessWidget {
  const CardCustomizeCode({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DottedBorder(
      dashPattern: const [4, 3],
      strokeWidth: 1,
      color: Colors.grey,
      borderType: BorderType.RRect,
      radius: const Radius.circular(8),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: const BorderRadius.all(
            Radius.circular(8),
          ),
        ),
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  Icons.confirmation_num_outlined,
                  color: Colors.blue,
                  size: 35,
                ),
                SizedBox(
                  width: 30,
                ),
                Text('¿Quieres un código diferente?'),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 200,
              child: PrimaryButton(
                title: 'Personalizar mi código',
                size: 's',
              ),
            )
          ],
        ),
      ),
    );
  }
}
