import 'package:flutter/material.dart';
import 'package:midictora/main.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
class about extends StatefulWidget {
  @override
  _aboutState createState() => _aboutState();
}

class _aboutState extends State<about> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        backgroundColor: Colors.lightBlueAccent,
        title: Text('About'),
      ),
        bottomNavigationBar: CurvedNavigationBar(
          backgroundColor: Colors.white,
          color: Colors.blueAccent,
          buttonBackgroundColor: Colors.blueAccent,
          height: 60,
          animationDuration: Duration(
            milliseconds: 200,
          ),
          index: 3,
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





      body: ListView(
        children: <Widget>[
          Container(
              child: Image.asset('assets/images/about.png'),
             ),
          Container(
            padding: EdgeInsets.all(8.0),
            child: Text('About Us',style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.green,

            )),
          ),
          Container(
            padding: EdgeInsets.all(8.0),
            child: Text('Welcome to miDoctora, your number one source for all online doctor. We are dedicated to providing you the very best of prescription, with an emphasis on prescriptions.Founded in 2020 by Engr Dickson Michael,'),
          ),
          Container(
            padding: EdgeInsets.all(8.0),
            child: Text('we hope you enjoy our services as much as we enjoy offering them to you. If you have any questions or comments, please dont hesitate to contact us'),
          ),
          RaisedButton(
            onPressed: _launchURL2,
            elevation: 0.5,
            color: Colors.blueAccent,
            child: Text('Mail: michaeldickson29@gmail.com'),
            // title: Text('Phone: +2349027532807 '),
            //leading: Icon(Icons.phone),
          ),

          RaisedButton(
            onPressed: _launchURL,
            elevation: 0.5,
            color: Colors.blueAccent,
            child: Text('Phone: +2349027532807'),
           // title: Text('Phone: +2349027532807 '),
            //leading: Icon(Icons.phone),
          ),
          Container(
            padding: EdgeInsets.all(8.0),
            child: Text('Rate Us',style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.green,

            )),
          ),
          RatingBar(
            initialRating: 3,
            itemCount: 5,
            itemBuilder: (context, index){
              switch (index) {
                case 0:
                  return Icon(
                    Icons.sentiment_very_dissatisfied,
                    color: Colors.red,
                  );
                case 1:
                  return Icon(
                    Icons.sentiment_dissatisfied,
                    color: Colors.redAccent,
                  );
                case 2:
                  return Icon(
                    Icons.sentiment_neutral,
                    color: Colors.amber,
                  );
                case 3:
                  return Icon(
                    Icons.sentiment_satisfied,
                    color: Colors.lightGreen,
                  );
                case 4:
                  return Icon(
                    Icons.sentiment_very_satisfied,
                    color: Colors.green,
                  );
              }
            },
            onRatingUpdate: (rating) {
              print(rating);
            },
          ),


        ],
      ),

    );
  }
}
_launchURL() async {
  const url = 'tel: +2349027532807';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

_launchURL2() async {
  const url = 'mailto: michaeldickson29@gmail.com';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}