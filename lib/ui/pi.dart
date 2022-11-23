import 'package:flutter/material.dart';
import 'package:progressive_image/progressive_image.dart';

void main() => runApp(pro());

class pro extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Progressive Image Demo')),
        body: ProgressiveImageExample(),
      ),
    );
  }
}

class ProgressiveImageExample extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        return Container(
            child:ProgressiveImage(
                placeholder: AssetImage('assets/images/placeholder.jpg'),
                // size: 4.82KB
                thumbnail: AssetImage('assets/images/thumb.jpg'),
                // size: 1.10MB
                image: NetworkImage('https://r4.wallpaperflare.com/wallpaper/263/332/40/sci-fi-artistic-astronaut-blender-hd-wallpaper-d930587dd19add8b96f7d8cf507196cd.jpg'),
                height: 300,
                width: 500,
                fadeDuration:const Duration(milliseconds:600),
            ),
        );
    }
}
