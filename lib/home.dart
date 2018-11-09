import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

import 'package:testingapp/components/horizontal_listview.dart';

// class HomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//             color: Colors.white,
//             child: Column(
//               children: <Widget>[
//                 //Icon(Icons.person),
//                 Text('user')
//               ],
//             ),
//           );
//   }
// }

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}
  
class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context){

  Widget image_carousel = new Container(
    height: 200.0,
    child: new Carousel(
      boxFit: BoxFit.cover,
      images: [
        AssetImage('images/img1.jpg'),
        AssetImage('images/img2.jpg'),
        AssetImage('images/img3.jpg')
      ],
      autoplay: true,
      animationCurve: Curves.fastOutSlowIn,
      animationDuration: Duration(milliseconds: 1000),
      dotSize: 4.0,
      indicatorBgPadding: 6.0,
    ),
  );

    return Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.red,
        title: Text('App Testing'),
        actions: <Widget>[
          new IconButton(icon: Icon(Icons.search, color: Colors.white), onPressed: null),
          new IconButton(icon: Icon(Icons.shopping_cart, color: Colors.white), onPressed: null)
        ],
      ),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            //header
            new UserAccountsDrawerHeader(
              accountName: Text('Elias Millachine'),
              accountEmail: Text('elias@elias.cl'),
              currentAccountPicture: GestureDetector(
                child: new CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: Icon(Icons.person, color: Colors.white),
                ),
              ),
              decoration: new BoxDecoration(
                color: Colors.red
              ),
            ),
            InkWell(
              onTap: (){},
              child: ListTile(title: Text('Home Page'), leading: Icon(Icons.home))),
            InkWell(
              onTap: (){},
              child: ListTile(title: Text('My Account'), leading: Icon(Icons.person))),
            InkWell(
              onTap: (){},
              child: ListTile(title: Text('My Orders'), leading: Icon(Icons.shopping_basket))),
            InkWell(
              onTap: (){},
              child: ListTile(title: Text('Categories'), leading: Icon(Icons.dashboard))),
            InkWell(
              onTap: (){},
              child: ListTile(title: Text('Favorite'), leading: Icon(Icons.favorite))),
              Divider(),
            InkWell(
              onTap: (){},
              child: ListTile(title: Text('Setting'), leading: Icon(Icons.settings, color: Colors.blue))),
            InkWell(
              onTap: (){},
              child: ListTile(title: Text('About'), leading: Icon(Icons.help, color: Colors.blue,))),                            
          ],
        ),
      ),
      body: new ListView(
        children: <Widget>[
          image_carousel,
          new Padding(padding: const EdgeInsets.all(8.0),
          child: new Text("Categories"),),
          HorizontalList()
        ],
      ),
    );
  }
}