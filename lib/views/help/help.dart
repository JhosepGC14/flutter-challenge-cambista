import 'package:flutter/material.dart';
import 'package:flutter_components/views/newOperation/components/components.dart';

class HelpView extends StatefulWidget {
  const HelpView({super.key});

  @override
  State<HelpView> createState() => _HelpViewState();
}

class _HelpViewState extends State<HelpView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 30,
      ),
      child: ListView(
        scrollDirection: Axis.vertical,
        children: [
          const SizedBox(
            height: 26,
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 15),
            padding: const EdgeInsets.symmetric(
              horizontal: 30,
              vertical: 17,
            ),
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: const BorderRadius.all(
                Radius.circular(
                  7,
                ),
              ),
            ),
            child: Row(
              children: [
                Container(
                  width: 50,
                  height: 50,
                  color: Colors.amber,
                  margin: const EdgeInsets.only(
                    right: 18,
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Horario de atención',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Lun. - Vie.: 8 am - 8 pm',
                      style: TextStyle(
                        color: Colors.grey[600],
                      ),
                    ),
                    Text(
                      'Sab.: 9 am - 2:30 pm',
                      style: TextStyle(
                        color: Colors.grey[600],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 35,
          ),
          const Center(
            child: Text(
              '¿Necesitas ayuda?',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Center(
            child: Text(
              'Escribenos por tu canal preferido:',
              style: TextStyle(
                color: Colors.grey[600],
                fontWeight: FontWeight.w300,
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Center(
            child: SizedBox(
              width: 225,
              child: Column(
                children: [
                  const PrimaryButton(
                    title: 'Ir a WhatsApp 💬',
                    size: 'm',
                  ),
                  const SizedBox(
                    height: 26,
                  ),
                  // Button secondary with Icon
                  const ButtonIcon(),
                  const SizedBox(
                    height: 26,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.phone,
                        color: Colors.blueAccent[700],
                        size: 17,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      RichText(
                        text: TextSpan(
                          text: 'Llámanos al ',
                          style: TextStyle(
                            color: Colors.blueAccent[700],
                          ),
                          children: <TextSpan>[
                            TextSpan(
                              text: '01743 6643',
                              style: TextStyle(
                                  color: Colors.blueAccent[700],
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ButtonIcon extends StatelessWidget {
  const ButtonIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
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
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Abrir chat',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Icon(Icons.messenger_outline_sharp, size: 16),
          ],
        ),
      ),
    );
  }
}
