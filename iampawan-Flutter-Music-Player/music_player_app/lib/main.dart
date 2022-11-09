import 'package:flutter/material.dart';
import 'package:music_player_app/utils/themes.dart';

import 'my_music_app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: darkTheme,
      home: const MyMusicApp(),
    );
  }
}

