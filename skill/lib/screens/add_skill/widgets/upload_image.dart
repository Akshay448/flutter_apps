import 'dart:typed_data';

import 'package:flutter/material.dart';

class UploadImage extends StatelessWidget {

  final Null _image = null;

  const UploadImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        _image != null
            ? CircleAvatar(
          radius: 64,
          backgroundImage: MemoryImage(_image!),
          backgroundColor: Colors.red,
        )
            : const CircleAvatar(
          radius: 64,
          backgroundImage: NetworkImage(
              'https://i.stack.imgur.com/l60Hf.png'),
          backgroundColor: Colors.red,
        ),
        Positioned(
          bottom: -10,
          left: 80,
          child: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.add_a_photo),
          ),
        )
      ],
    );
  }
}
