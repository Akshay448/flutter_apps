
import 'package:flutter/material.dart';

import '../data/song_data.dart';

class MPInheritedWidget extends InheritedWidget {
  final SongData songData;
  final bool isLoading;

  const MPInheritedWidget(this.songData, this.isLoading, child)
      : super(child: child);

  static MPInheritedWidget? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<MPInheritedWidget>();
  }

  @override
  bool updateShouldNotify(MPInheritedWidget oldWidget) =>
      // TODO: implement updateShouldNotify
      songData != oldWidget.songData || isLoading != oldWidget.isLoading;
}
