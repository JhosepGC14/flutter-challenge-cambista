import 'package:flutter/material.dart';
import '../components.dart';

class FormExchange extends StatefulWidget {
  const FormExchange({super.key});

  @override
  State<FormExchange> createState() => _FormExchangeState();
}

class _FormExchangeState extends State<FormExchange> {
  String valueSelected = 'COMPRA';

  void setNewValueSelected(String newValue) {
    setState(() {
      valueSelected = newValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ButtonSwitch(
              title: 'Compra:  3.629',
              selected: valueSelected == 'COMPRA',
              value: 'COMPRA',
              callback: setNewValueSelected,
            ),
            ButtonSwitch(
              title: 'Venta:  3.789',
              value: 'VENTA',
              selected: valueSelected == 'VENTA',
              callback: setNewValueSelected,
            ),
          ],
        ),
        const SizedBox(
          height: 10.00,
        ),
        Stack(
          children: [
            const Column(
              children: [
                TextFieldCustom(),
                SizedBox(
                  height: 25.00,
                ),
                TextFieldCustom(),
              ],
            ),
            Positioned(
              right: 20,
              bottom: 60,
              child: IconButton(
                padding: const EdgeInsets.all(10.0),
                iconSize: 30,
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                  const Color(0xff1D63FF),
                )),
                onPressed: () {},
                icon: const Icon(
                  Icons.currency_exchange,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 10,
                right: 10,
                top: 15,
                bottom: 50,
              ),
              child: Row(
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
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Icon(Icons.confirmation_number_outlined)
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
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Icon(Icons.toll_outlined)
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
        const PrimaryButton(),
      ],
    );
  }
}
