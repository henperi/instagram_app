import 'package:flutter/material.dart';
import 'package:instagram_app/widgets/composedWidgets/bottom_nav_bar.dart';
import 'package:instagram_app/widgets/composedWidgets/image_avatar.dart';
import 'package:instagram_app/widgets/composedWidgets/search/search.dart';
import 'package:instagram_app/widgets/composedWidgets/top_nav_bar.dart';

class ProfileScreen extends StatelessWidget {
  static final routeName = '/profile';

  List<Widget> _editProfileSection() {
    return <Widget>[
      Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Stack(
              children: <Widget>[
                avatar(
                  imageUrl:
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTEFF6tCXWJuWRLxP0Ovu785xFo3oiw_kKf0ZRJCIGH0jbIFvo1',
                  size: 40,
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: CircleAvatar(
                    child: Icon(
                      Icons.add,
                      size: 18,
                      color: Colors.white,
                    ),
                    radius: 12,
                    backgroundColor: Colors.blueAccent[100],
                  ),
                )
              ],
            ),
            Column(
              children: <Widget>[Text('0'), Text('Posts')],
            ),
            Column(
              children: <Widget>[Text('150'), Text('Followers')],
            ),
            Column(
              children: <Widget>[Text('200'), Text('Following')],
            ),
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Row(
          children: <Widget>[
            Expanded(
              child: RaisedButton(
                child: Text('Edit Profile'),
                onPressed: () {},
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    ];
  }

  Widget _tabSection() {
    return Expanded(
      child: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.grid_on)),
              Tab(icon: Icon(Icons.person_pin)),
            ],
          ),
          body: TabBarView(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    height: 140,
                    child: Card(
                      elevation: 0.3,
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            Text(
                              'Profile',
                              style: TextStyle(fontSize: 24),
                            ),
                            Text(
                              'Lorem ipsum is a pseudo-Latin text used in web design, typography, layout.',
                            ),
                            GestureDetector(
                              child: Text(
                                'Click to add',
                                style: TextStyle(
                                  color: Colors.blue[300],
                                ),
                              ),
                              onTap: () {},
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  ..._completeProfileSection()
                ],
              ),
              Column(
                children: <Widget>[
                  Expanded(
                    child: SearchBody(),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  List<Widget> _completeProfileSection() {
    return <Widget>[
      SizedBox(height: 20),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Text(
          'Complete your profile',
          textAlign: TextAlign.left,
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Text(
          '2 of 4 Complete',
          textAlign: TextAlign.left,
        ),
      ),
      SizedBox(height: 5),
      Container(
        height: 200,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 200,
                width: 200,
                child: Card(
                  elevation: 0.2,
                  child: Center(child: Text('ddd')),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 200,
                width: 200,
                child: Card(
                  elevation: 0.2,
                  child: Center(child: Text('ddd')),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 200,
                width: 200,
                child: Card(
                  elevation: 0.2,
                  child: Center(child: Text('ddd')),
                ),
              ),
            ),
          ],
        ),
      )
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: tonNavBar(title: Text('User Name'), actions: <Widget>[
        Padding(
          padding: const EdgeInsets.only(right: 15),
          child: Icon(Icons.menu),
        )
      ]),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          ..._editProfileSection(),
          Divider(),
          _tabSection(),
        ],
      ),
      bottomNavigationBar: bottomNavBar(context),
    );
  }
}
