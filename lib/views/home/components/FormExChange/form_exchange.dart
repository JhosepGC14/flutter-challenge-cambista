import 'package:flutter/material.dart';
import '../components.dart';

class FormExchange extends StatefulWidget {
  const FormExchange({super.key});

  @override
  State<FormExchange> createState() => _FormExchangeState();
}

class _FormExchangeState extends State<FormExchange> {
  String valueSelected = 'COMPRA';

  String? currentTextDolar = '';
  String? currentTextSoles = '';
  @override
  void dispose() {
    super.dispose();
  }

  void setNewValueSelected(String newValue) {
    setState(() {
      valueSelected = newValue;
    });
  }

  void onChangedInputFieldDolar(String value) {
    print('input value: $value');
    currentTextDolar = value;
  }

  void onChangedInputFieldSoles(String value) {
    print('input value: $value');
    currentTextSoles = value;
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
            Column(
              children: [
                TextFieldCustom(
                  title: 'Tu recibes dólares',
                  initialValueInput: '\$ 500.00',
                  onChangedInput: onChangedInputFieldDolar,
                ),
                const SizedBox(
                  height: 25.00,
                ),
                TextFieldCustom(
                  title: 'Tu envías soles',
                  initialValueInput: 'S/ 1,840.50',
                  onChangedInput: onChangedInputFieldSoles,
                ),
              ],
            ),
            Positioned(
              right: 20,
              bottom: 65,
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
        const Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                left: 10,
                right: 10,
                top: 15,
                bottom: 50,
              ),
              child: CuponCreditsForm(),
            )
          ],
        ),
        const PrimaryButton(),
        Container(
          margin: const EdgeInsets.only(
            top: 30,
          ),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.schedule,
                color: Color(0xFF00297B),
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                'Tiempo promedio de atención: ',
                style: TextStyle(
                  color: Color(0xFF00297B),
                ),
              ),
              Text(
                '15 min',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF00297B),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
