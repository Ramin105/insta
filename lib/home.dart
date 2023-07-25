import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<String> profileImage = [
    'assets/images/image_1.jpeg',
    'assets/images/image_2.jpg',
    'assets/images/image_3.jpg',
    'assets/images/image_4.jpeg',
    'assets/images/image_1.jpeg',
    'assets/images/image_2.jpg',
    'assets/images/image_3.jpg',
    'assets/images/image_4.jpeg',
    'assets/images/image_5.jpeg',
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 100,
            child: Row(
              children: [
                Expanded(
                  child: ListView.builder(
                    padding: EdgeInsets.zero,
                    scrollDirection: Axis.horizontal,
                    itemCount: profileImage.length,
                    itemBuilder: (context, index) {
                      return SizedBox(
                        width: 100,
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: ClipOval(
                            child: Image.asset(
                              profileImage[index],
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
          Column(
            children: [
              SizedBox(
                height: 50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SizedBox(
                            width: 40,
                            child: ClipOval(
                              child: Image.asset(
                                profileImage[0],
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        const Text('mauroicardi'),
                      ],
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.more_vert),
                    ),
                  ],
                ),
              ),
              AspectRatio(
                aspectRatio: 1,
                child: Image.asset(
                  'assets/images/image_5.jpg',
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                height: 40,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: const FaIcon(FontAwesomeIcons.heart)),
                        IconButton(
                            onPressed: () {},
                            icon: const FaIcon(FontAwesomeIcons.comment)),
                        IconButton(
                            onPressed: () {},
                            icon: const FaIcon(FontAwesomeIcons.paperPlane)),
                      ],
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(FontAwesomeIcons.bookmark)),
                  ],
                ),
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.all(10.0),
            child: Text('5 000 000 Likes'),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 10.0),
            child: Text('mauroicardi: 3-0'),
          ),
          const Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(
              'view all 10334 comments',
              style: TextStyle(color: Colors.grey),
            ),
          ),
          SizedBox(
              height: 40,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: CircleAvatar(
                      child: ClipOval(
                        child: Image.asset(
                          profileImage[0],
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  const Text('Type a message...'),
                ],
              ))
        ],
      ),
    );
  }
}
