import 'package:flutter/material.dart';

class CardShareIcons extends StatefulWidget {
  const CardShareIcons({super.key});

  @override
  State<CardShareIcons> createState() => _CardShareIconsState();
}

class _CardShareIconsState extends State<CardShareIcons> {
  @override
  Widget build(BuildContext context) {
    return Flex(
      direction: Axis.horizontal,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            color: Colors.green,
            borderRadius: BorderRadius.circular(17),
          ),
          child: const Center(
            child: Text(
              'WSP',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
        Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(17),
          ),
          child: const Center(
            child: Text(
              'FB',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
        Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            color: Colors.blue[200],
            borderRadius: BorderRadius.circular(17),
          ),
          child: const Center(
            child: Text(
              'TW',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
        Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            color: Colors.amber,
            borderRadius: BorderRadius.circular(17),
          ),
          child: const Center(
            child: Text(
              'SHR',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ],
    );
  }
}
