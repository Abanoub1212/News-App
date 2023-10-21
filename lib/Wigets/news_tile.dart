import 'package:flutter/material.dart';

class NewsTile extends StatelessWidget {
  const NewsTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(6),
          child: Image.asset(
            'assets/health.avif',
            height: 200,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(
          height: 12,
        ),
        const Text(
          "ggggggggggggggggggggggggggggggbdveguveygeygvuigefugcuuevurgvgggggggggggggggggggg",
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
              color: Colors.black, fontSize: 20, fontWeight: FontWeight.w500),
        ),
        const SizedBox(
          height: 8,
        ),
        const Text(
          "ggggggggggggggggggggggggg",
          maxLines: 2,
          style: TextStyle(
            color: Colors.grey,
            fontSize: 14,
          ),
        ),
      ],
    );
  }
}
