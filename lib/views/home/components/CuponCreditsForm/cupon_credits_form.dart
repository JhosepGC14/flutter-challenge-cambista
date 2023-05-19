import 'package:flutter/material.dart';

class CuponCreditsForm extends StatelessWidget {
  const CuponCreditsForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: () => {
            print('solo se ejecuta el cupon'),
          },
          child: const Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Usar cupon',
                style: TextStyle(
                  color: Color(0xFF00297B),
                ),
              ),
              SizedBox(
                width: 15,
              ),
              Icon(
                Icons.confirmation_number_outlined,
                color: Color(0xFF00297B),
              )
            ],
          ),
        ),
        GestureDetector(
          onTap: () => {
            print('solo se ejecuta el credito'),
          },
          child: const Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Usar creditos',
                style: TextStyle(
                  color: Color(0xFF00297B),
                ),
              ),
              SizedBox(
                width: 15,
              ),
              Icon(
                Icons.toll_outlined,
                color: Color(0xFF00297B),
              )
            ],
          ),
        )
      ],
    );
  }
}
