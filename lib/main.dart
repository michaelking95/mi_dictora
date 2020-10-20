import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:midictora/views/cold.dart';
import 'package:midictora/views/malaria.dart';
import 'package:midictora/views/about.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
void main() {
  runApp(MaterialApp(
    title: 'Navigation Basics',
    home: miDoctora(),
  ));
}

class miDoctora extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget image_carousel = new Container(
      height: 200.0,
      child: new Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage('assets/images/banner.png'),
          AssetImage('assets/images/a.jpg'),
          AssetImage('assets/images/b.jpg'),
          AssetImage('assets/images/c.jpg'),
          AssetImage('assets/images/d.jpg'),
          AssetImage('assets/images/e.jpg'),
        ],
        autoplay: true,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(milliseconds: 1000),
        dotSize: 4.0,
        dotColor: Colors.blueAccent,
        //indicatorBgPadding: 6.0,
      ),
    );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'miDoctora',
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.lightBlueAccent,
          title: Text('miDoctora'),
        ),
        bottomNavigationBar:  CurvedNavigationBar(
          backgroundColor: Colors.white,
          color: Colors.blueAccent,
          buttonBackgroundColor: Colors.blueAccent,
          height: 60,
          animationDuration: Duration(
            milliseconds: 200,
          ),
          index: 2,
          animationCurve: Curves.bounceInOut,
          items: <Widget>[
            InkWell(
              onTap: ()=>
                  Navigator.of(context).push(
                    new MaterialPageRoute(builder: (context) => new miDoctora()),
                  ),
              child: Icon(Icons.verified_user, size: 30, color: Colors.white),
            ),
            InkWell(
              onTap: ()=>
                  Navigator.of(context).push(
                    new MaterialPageRoute(builder: (context) => new miDoctora()),
                  ),
              child: Icon(Icons.favorite, size: 30, color: Colors.white),
            ),
            InkWell(
              onTap: ()=>
                  Navigator.of(context).push(
                    new MaterialPageRoute(builder: (context) => new miDoctora()),
                  ),
              child: Icon(Icons.home, size: 30, color: Colors.white),
            ),
            InkWell(
              onTap: ()=>
                  Navigator.of(context).push(
                    new MaterialPageRoute(builder: (context) => new about()),
                  ),
              child: Icon(Icons.person, size: 30, color: Colors.white),
            ),
            InkWell(
              onTap: ()=>
                  Navigator.of(context).push(
                    new MaterialPageRoute(builder: (context) => new miDoctora()),
                  ),
              child: Icon(Icons.more_horiz, size: 30, color: Colors.white),
            ),

            //Icon(Icons.favorite, size: 30, color: Colors.white),
            //Icon(Icons.verified_user, size: 30, color: Colors.white),
            // Icon(Icons.home, size: 30, color: Colors.white),
            //Icon(Icons.settings, size: 30, color: Colors.white),
            // Icon(Icons.more_horiz, size: 30, color: Colors.white),
          ],
          onTap: (index) {
            //Handle button tap

          },
        ),
        drawer: Builder(builder: (context) => Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[

              UserAccountsDrawerHeader(accountName: CircleAvatar(
                radius: 30.0,
                backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRhsOxCHZckWv73OOQGGwR806wlfzYGJ8WyLg&usqp=CAU'),
              ), accountEmail: Text('Mi Doctora'),),

              ListTile(
                title: InkWell(
                    onTap: ()=>
                        Navigator.of(context).push(
                          new MaterialPageRoute(builder: (context) => new malaria()),
                        ),
                    child: Text('Malaria')),
                leading: Icon(Icons.airline_seat_flat),

              ),
              ListTile(
                title: InkWell(
                    onTap: ()=>
                        Navigator.of(context).push(
                          new MaterialPageRoute(builder: (context) => new cold()),
                        ),
                    child: Text('cold')),
                leading: Icon(Icons.airline_seat_flat),
                ),

              ListTile(
                title: Text('Tuberculosis'),
                leading: Icon(Icons.airline_seat_flat),
                onTap: (){
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Text('Diarrhea'),
                leading: Icon(Icons.airline_seat_flat),
                onTap: (){
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Text('Cough'),
                leading: Icon(Icons.airline_seat_flat),
                onTap: (){
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Text('Mononuecleosis'),
                leading: Icon(Icons.airline_seat_flat),
                onTap: (){
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Text('Conjunctivitis'),
                leading: Icon(Icons.airline_seat_flat),
                onTap: (){
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Text('Flu'),
                leading: Icon(Icons.airline_seat_flat),
                onTap: (){
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Text('Stomach Ache'),
                leading: Icon(Icons.airline_seat_flat),
                onTap: (){
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Text('Covid -19'),
                leading: Icon(Icons.airline_seat_flat),
                onTap: (){
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: InkWell(
                    onTap: ()=>
                        Navigator.of(context).push(
                          new MaterialPageRoute(builder: (context) => new about()),
                        ),
                    child: Text('about',style: TextStyle(
                      color: Colors.blueAccent
                    ),)),
                leading: Icon(Icons.airline_seat_flat,color: Colors.blueAccent,),
              ),
            ],
          ),
        ),
        ),
        body:
        ListView(
          children: <Widget>[
            image_carousel,
            SizedBox(
              width: 10.0,
              height: 5.0,
            ),
            Container(
              child: Text('Online Doctor Consultations & Prescriptions '
                  'Myonlinedoctor is a private doctor service providing '
                  'online consultations and healthcare operating since 2006.',textAlign: TextAlign.center,),
              padding: EdgeInsets.all(16.0),


            ),
            
          ],
        ),

      ),
    );
  }
}

