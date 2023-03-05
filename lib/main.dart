import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Instagram Post'),
        ),
        body: const InstagramPost(),
      ),
    );
  }
}

class InstagramPost extends StatelessWidget {
  const InstagramPost({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        // Cabecera del post
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  ClipOval(
                    child: Image.asset(
                      'assets/img/cara_estatua_de_la_libertad.jpg',
                      width: 50.0,
                      height: 50.0,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(width: 13.0),
                  const Text(
                    'Statue of Liberty',
                    style:
                        TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const Icon(Icons.more_vert),
            ],
          ),
        ),
        // Imagen del post
        Image.asset('assets/img/estatua_de_la_libertad.jpeg'),
        // Iconos de iteraccin con el usuario
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Image.asset(
                    'assets/icons/icon_heart.png',
                    height: 35.0,
                    width: 35.0,
                  ),
                  const SizedBox(
                    width: 10.0,
                  ),
                  Image.asset(
                    'assets/icons/icon_comment.png',
                    height: 35.0,
                    width: 35.0,
                  ),
                  const SizedBox(
                    width: 10.0,
                  ),
                  Image.asset(
                    'assets/icons/icon_send.png',
                    height: 35.0,
                    width: 35.0,
                  ),
                ],
              ),
              Image.asset(
                'assets/icons/icon_save.png',
                height: 35.0,
                width: 35.0,
              ),
            ],
          ),
        ),
        // Likes
        Row(
          children: <Widget>[
            const SizedBox(
              width: 16.0,
            ),
            ClipOval(
              child: Image.asset(
                'assets/img/blonde_girl.jpg',
                width: 30.0,
                height: 30.0,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(
              width: 5.0,
            ),
            const Text(
              'Le gusta a',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              width: 5.0,
            ),
            const Text(
              'tercosmicqueen',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              width: 5.0,
            ),
            const Text(
              'y',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              width: 5.0,
            ),
            const Text(
              'a 1,937 mas...',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ],
    );
  }
}
