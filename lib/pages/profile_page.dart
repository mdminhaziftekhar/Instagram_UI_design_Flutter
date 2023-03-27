import 'package:flutter/material.dart';

import '../tabs/feed_view.dart';
import '../tabs/reels_view.dart';
import '../tabs/tagged_view.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  //tabs
  final List<Widget> tabs = const [
    // feed tab
    Tab(
      icon: Icon(
        Icons.image,
        color: Colors.grey,
      ),
    ),

    //reels tab
    Tab(
      icon: Icon(
        Icons.video_collection,
        color: Colors.grey,
      ),
    ),

    //tagged tab
    Tab(
      icon: Icon(
        Icons.bookmark,
        color: Colors.grey,
      ),
    ),
  ];

  // tab bar views
  final List<Widget> tabBarViews = [
    //feed view
    FeedView(),

    // reels view
    ReelsView(),

    // tagged view
    TaggedView(),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: ListView(
          children: [
            const SizedBox(
              height: 10.0,
            ),
            //profile details

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: const [
                    Text(
                      '364',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Following',
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                //profile pic
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Container(
                    height: 120,
                    width: 100,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey[300],
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage('assets/images/image8.jpg'),
                      ),
                    ),
                  ),
                ),

                // Followers
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      '21.4k',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Followers',
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  'Minhaz Iftekhar',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(' | '),
                Text(
                  'Software Engineer',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
              //name
            ),

            const SizedBox(height: 20),

            //bio
            const Text(
              'Hello I\'m Minhaz Iftekhar. You can follow me here.',
              style: TextStyle(
                color: Colors.grey,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 5),

            //links

            const Text(
              'linkedin.com/in/minhaz-iftekhar-07a5911bb',
              style: TextStyle(
                color: Color.fromARGB(255, 0, 74, 201),
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),

            const SizedBox(height: 20),

            //buttons
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.all(20.0),
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 224, 221, 221),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: const Center(
                        child: Text('Edit Profile'),
                      ),
                    ),
                  ),

                  const SizedBox(
                    width: 10,
                  ),

                  //contact button
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.all(20.0),
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: const Center(
                        child: Text(
                          'Contact',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),

            // tab bar
            TabBar(
              tabs: tabs,
            ),

            // tab bar view
            SizedBox(
              height: 1300,
              child: TabBarView(
                children: tabBarViews,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
