import 'package:flutter/material.dart';

class MediaSections extends StatefulWidget {
  const MediaSections({super.key});

  @override
  State<MediaSections> createState() => _MediaSectionsState();
}

class _MediaSectionsState extends State<MediaSections> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Media, docs and links',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.keyboard_arrow_right_sharp,
                  size: 30,
                ),
              )
            ],
          ),
          const MediaDocs(),
        ],
      ),
    );
  }
}

class MediaDocs extends StatelessWidget {
  const MediaDocs({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.symmetric(
              horizontal: 5,
              vertical: 5,
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                'assets/images/background.png',
                height: 100,
                width: 100,
                fit: BoxFit.cover,
              ),
            ),
          );
        },
      ),
    );
  }
}
