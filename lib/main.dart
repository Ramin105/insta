import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:insta/home.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(useMaterial3: true),
      debugShowCheckedModeBanner: false,
      title: 'Instagram',
      home: Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
                onPressed: () {},
                icon: const FaIcon(
                  FontAwesomeIcons.heart,
                )),
            IconButton(
                onPressed: () {},
                icon: const FaIcon(FontAwesomeIcons.facebookMessenger)),
          ],
          title: Text(
            'Instagram',
            style: GoogleFonts.lobster(fontSize: 24),
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          height: 60,
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            IconButton(
                onPressed: () {},
                icon: const Icon(Icons.home, color: Colors.white)),
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.search_sharp,
                  color: Colors.white,
                )),
            IconButton(
                onPressed: () {}, icon: const Icon(Icons.add_box_outlined)),
            IconButton(
                onPressed: () {},
                icon: const Icon(Icons.video_camera_back, color: Colors.white)),
            IconButton(
                onPressed: () {},
                icon: const Icon(Icons.circle, color: Colors.white)),
          ]),
        ),
        body: const Home(),
      ),
    );
  }
}
