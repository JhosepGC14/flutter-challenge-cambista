import 'package:flutter/material.dart';

class ButtonTabBarCustom extends StatefulWidget {
  const ButtonTabBarCustom(
      {super.key,
      required this.textButton,
      required this.onClick,
      required this.isActive});

  final String textButton;
  final bool isActive;
  final void Function() onClick;

  @override
  State<ButtonTabBarCustom> createState() => _ButtonTabBarCustomState();
}

class _ButtonTabBarCustomState extends State<ButtonTabBarCustom> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onClick,
      child: Container(
        padding: const EdgeInsets.only(left: 10, right: 10),
        margin: const EdgeInsets.only(
          right: 13,
          left: 13,
        ),
        decoration: BoxDecoration(
          color: widget.isActive
              ? const Color.fromARGB(247, 23, 138, 252)
              : const Color.fromARGB(247, 201, 228, 255),
          borderRadius: const BorderRadius.all(
            Radius.circular(5),
          ),
        ),
        child: Center(
          child: Text(
            widget.textButton,
            style: TextStyle(
              color: widget.isActive
                  ? Colors.white
                  : const Color.fromARGB(247, 10, 129, 248),
            ),
          ),
        ),
      ),
    );
  }
}
