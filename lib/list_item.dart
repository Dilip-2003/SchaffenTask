import 'package:flutter/material.dart';

class ListItems extends StatelessWidget {
  const ListItems({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: 10,
      itemBuilder: (context, index) {
        return Container(
          margin: const EdgeInsets.only(
            right: 5,
            left: 5,
            bottom: 10,
          ),
          height: 20,
          width: 70,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                width: 1,
                color: const Color(0xFFEF456F),
              )),
          child: const Center(
            child: Text(
              'Outdoor',
              style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFFEF456F)),
            ),
          ),
        );
      },
    );
  }
}
