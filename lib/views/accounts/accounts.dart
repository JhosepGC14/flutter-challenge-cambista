import 'package:flutter/material.dart';
import 'components/card_account_product/card_account_product.dart';

class AccountsView extends StatefulWidget {
  const AccountsView({super.key});

  @override
  State<AccountsView> createState() => _AccountsViewState();
}

class _AccountsViewState extends State<AccountsView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 30,
        vertical: 20,
      ),
      child: ListView(
        children: [
          const Text(
            'Productos bancarios',
            style: TextStyle(
              fontSize: 17.00,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 17,
          ),
          const Text(
            'Puedes elegir un favorito por tipo de moneda. Los productos favoritos los tendrás de fácil acceso durante la operación.',
            style: TextStyle(
              fontSize: 15.00,
              color: Colors.black54,
              fontWeight: FontWeight.normal,
            ),
          ),
          const SizedBox(
            height: 27,
          ),
          Flex(
            direction: Axis.horizontal,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              GestureDetector(
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 9,
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                      width: 1.0,
                    ),
                    borderRadius: const BorderRadius.all(
                      Radius.circular(8.0),
                    ),
                  ),
                  child: const Row(
                    children: [
                      Icon(Icons.add_circle_outline, size: 19),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        'Cuenta bancaria',
                        style: TextStyle(
                          fontSize: 14.00,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                width: 15,
              ),
              GestureDetector(
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 9,
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                      width: 1.0,
                    ),
                    borderRadius: const BorderRadius.all(
                      Radius.circular(8.0),
                    ),
                  ),
                  child: const Row(
                    children: [
                      Icon(Icons.add_circle_outline, size: 19),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        'Tarjeta de crédito',
                        style: TextStyle(
                          fontSize: 14.00,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 27,
          ),
          const CardAccountProduct(),
          const CardAccountProduct(),
          const CardAccountProduct(),
          const CardAccountProduct(),
          const CardAccountProduct(),
          const CardAccountProduct(),
        ],
      ),
    );
  }
}
