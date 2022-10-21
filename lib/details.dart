import 'package:flutter/material.dart';

void main() => runApp(MyApp());

final Color teal = Color(0xFF004D40);

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(body: Center(child: AnimatedHeader())));
  }
}

class AnimatedHeader extends StatefulWidget {
  AnimatedHeaderState createState() => AnimatedHeaderState();
}

class AnimatedHeaderState extends State<AnimatedHeader> {
  Image backgroundImage() {
    return Image.network(
      "https://insights.ehotelier.com/wp-content/uploads/sites/6/2020/01/hotel-room-300x300.jpg",
      fit: BoxFit.cover,
    );
  }

  Card listCard(int index) {
    return Card(
      elevation: 7,
      margin: EdgeInsets.only(left: 10, right: 10, top: 10),
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
        child: Text("Item $index"),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[


          SliverAppBar(
            pinned: true,
            snap: false,
            floating: false,
            expandedHeight: 200.0,
            elevation: 10,
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: true,
              title: Container(
                child: Text(
                    'Animated Collapsible Expandable Header',style: TextStyle(fontSize: 15),
                    textAlign: TextAlign.start,),
              ),
              titlePadding: EdgeInsets.only(bottom: 40),

              background: backgroundImage(),
            ),
          ),






          SliverList(
            delegate: SliverChildBuilderDelegate(
                  (context, index) {
                return listCard(index);
              },
            ),
          )

        ],
      ),
    );
  }
}