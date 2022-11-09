import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flute_music_player/flute_music_player.dart';

import 'mp_inherited.dart';
class MPDrawer extends StatefulWidget {
  @override
  MPDrawerState createState() {
    return  MPDrawerState();
  }
}

class MPDrawerState extends State<MPDrawer> {
  late bool dark;
  @override
  initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    dynamic rootIW = MPInheritedWidget.of(context)?.songData;
    var cI = rootIW.currentIndex;
    Song song =
        rootIW.songs[((cI == null) || (cI < 0)) ? 0 : rootIW.currentIndex];
    var f = song.albumArt == null
        ? null
        :  File.fromUri(Uri.parse(song.albumArt));
    return  Drawer(
        child:  ListView(
      children: <Widget>[
         DrawerHeader(
          padding: EdgeInsets.zero,
          child: f != null
              ?  Image.file(
                  f,
                  fit: BoxFit.fill,
                  gaplessPlayback: true,
                )
              :  Image.asset(
                  "assets/music_record.jpeg",
                  fit: BoxFit.fill,
                  scale: 5.0,
                  gaplessPlayback: true,
                ),
        ),
        //  SwitchListTile(
        //   title:  Text("Dark Theme"),
        //   value: dark,
        //   onChanged: (bool value) {
        //     preferences.setBool("dark", value);
        //     Scaffold.of(context).showSnackBar( SnackBar(
        //           content:  Text("Please restart to perform changes."),
        //         ));
        //     Navigator.pop(context);
        //   },
        // ),
      ],
    ));
  }
}
