import 'package:flutter/material.dart';

import '../components.dart';

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
            showDialog(
              context: context,
              barrierDismissible: false,
              builder: (BuildContext context) {
                return const DialogCuponCustom();
              },
            ),
          },
          child: const Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(right: 10.0),
                child: Text(
                  'Usar cupon',
                  style: TextStyle(
                    color: Color(0xFF00297B),
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Icon(
                Icons.confirmation_number_outlined,
                color: Color(0xFF00297B),
                size: 17.0,
              )
            ],
          ),
        ),
        GestureDetector(
          onTap: () => {},
          child: const Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Usar creditos',
                style: TextStyle(
                  color: Color(0xFF00297B),
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(
                width: 15,
              ),
              Icon(
                Icons.toll_outlined,
                color: Color(0xFF00297B),
                size: 17.0,
              )
            ],
          ),
        )
      ],
    );
  }
}
