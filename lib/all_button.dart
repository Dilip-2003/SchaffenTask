import 'package:flutter/material.dart';
import 'package:switcher_button/switcher_button.dart';

class AllButtons extends StatefulWidget {
  const AllButtons({super.key});

  @override
  State<AllButtons> createState() => _AllButtonsState();
}

class _AllButtonsState extends State<AllButtons> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16.0),
      height: 200,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Mute notification',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),
              SwitcherButton(
                size: 50,
                onColor: Colors.grey,
                offColor: Colors.white,
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          const Row(
            children: [
              Icon(
                Icons.delete_outline,
                size: 30,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                'Clear Chat',
                style: TextStyle(
                  color: Color(0xFF000000),
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          const Row(
            children: [
              Icon(
                Icons.lock_outline,
                size: 30,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                'Encryption',
                style: TextStyle(
                  color: Color(0xFF000000),
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          const Row(
            children: [
              Icon(
                Icons.logout,
                color: Colors.red,
                size: 30,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                'Exit Community',
                style: TextStyle(
                  color: Color(0xFFFF3040),
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          const Row(
            children: [
              Icon(
                Icons.thumb_down_outlined,
                color: Colors.red,
                size: 30,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                'Report',
                style: TextStyle(
                  color: Color(0xFFFF3040),
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
