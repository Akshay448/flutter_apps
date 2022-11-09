import 'package:flute_music_player/flute_music_player.dart';
import 'package:flutter/material.dart';
import 'package:music_player_app/pages/root_page.dart';
import 'package:music_player_app/widgets/mp_inherited.dart';

import 'data/song_data.dart';

class MyMusicApp extends StatefulWidget {
  const MyMusicApp({Key? key}) : super(key: key);

  @override
  State<MyMusicApp> createState() => _MyMusicAppState();
}

class _MyMusicAppState extends State<MyMusicApp> {
  late SongData songData;
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    initPlatformState();
  }

  @override
  void dispose() {
    super.dispose();
    songData.audioPlayer.stop();
  }

  // Platform messages are asynchronous, so we initialize in an async method.
  initPlatformState() async {
    _isLoading = true;

    var songs;
    try {
      songs = await MusicFinder.allSongs();
    } catch (e) {
      print("Failed to get songs: '${e.toString()}'.");
    }

    print(songs);
    // If the widget was removed from the tree while the asynchronous platform
    // message was in flight, we want to discard the reply rather than calling
    // setState to update our non-existent appearance.
    if (!mounted) return;

    setState(() {
      songData =  SongData((songs));
      _isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MPInheritedWidget(songData, _isLoading, RootPage());
  }
}
