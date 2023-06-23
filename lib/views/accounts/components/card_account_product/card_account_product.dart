import 'package:flutter/material.dart';

class CardAccountProduct extends StatelessWidget {
  const CardAccountProduct({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      margin: const EdgeInsets.only(
        bottom: 25,
      ),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey.shade400,
          width: 1,
        ),
        borderRadius: const BorderRadius.all(
          Radius.circular(5),
        ),
      ),
      child: Column(
        children: [
          Flex(
            direction: Axis.horizontal,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.grade_outlined,
                    color: Colors.grey.shade400,
                    size: 23,
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  const Text(
                    'Ahorro Dólares',
                    style: TextStyle(
                      fontSize: 15.00,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  GestureDetector(
                    child: const Icon(
                      Icons.edit_outlined,
                      color: Colors.grey,
                      size: 23,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  GestureDetector(
                    child: const Icon(
                      Icons.delete_outline_outlined,
                      color: Colors.grey,
                      size: 23,
                    ),
                  ),
                ],
              )
            ],
          ),
          Container(
            padding: const EdgeInsets.only(
              top: 10,
              left: 30,
              right: 10,
            ),
            child: Column(
              children: [
                Flex(
                  direction: Axis.horizontal,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Expanded(
                      flex: 1,
                      child: Text('Beneficiario: '),
                    ),
                    Expanded(
                      flex: 2,
                      child: Text(
                        'Jhosep Adolfo Guadalupe C...',
                        style: TextStyle(
                          color: Colors.grey.shade400,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 2,
                ),
                Flex(
                  direction: Axis.horizontal,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Expanded(
                      flex: 1,
                      child: Text('Banco: '),
                    ),
                    Expanded(
                      flex: 2,
                      child: Text(
                        'Interbank',
                        style: TextStyle(
                          color: Colors.grey.shade400,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 2,
                ),
                Flex(
                  direction: Axis.horizontal,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Expanded(
                      flex: 1,
                      child: Text('Tipo y número: '),
                    ),
                    Expanded(
                      flex: 2,
                      child: RichText(
                        text: TextSpan(
                          text: 'Cuenta de ahorros ',
                          style: TextStyle(
                            color: Colors.grey.shade400,
                          ),
                          children: const <TextSpan>[
                            TextSpan(
                              text: '898-3225575640',
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 2,
                ),
                Flex(
                  direction: Axis.horizontal,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Expanded(
                      flex: 1,
                      child: Text('Moneda: '),
                    ),
                    Expanded(
                      flex: 2,
                      child: Text(
                        'Dólares(\$)',
                        style: TextStyle(
                          color: Colors.grey.shade400,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
