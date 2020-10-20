import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:midictora/main.dart';
import 'package:midictora/views/about.dart';
class malaria extends StatefulWidget {
  @override
  _malariaState createState() => _malariaState();
}

class _malariaState extends State<malaria> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlueAccent,
        title: Text('Malaria'),
      ),

      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.white,
        color: Colors.blueAccent,
        buttonBackgroundColor: Colors.blueAccent,
        height: 60,
        animationDuration: Duration(
          milliseconds: 200,
        ),
        //index: 3,
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
            child: Image.asset('assets/images/malaria.jpg'),
          ),
          SizedBox(
            width: 10.0,
            height: 5.0,
          ),
          Container(
            padding: EdgeInsets.all(8.0),
            child: Text('Symptoms of Malaria',style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.green,

            )),
          ),
          Container(
            padding: EdgeInsets.all(8.0),
            child: Text('Symptoms of malaria can develop as quickly as 7 days after you are bitten by an infected mosquito.'),
          ),
          Container(
            padding: EdgeInsets.all(8.0),
            child: Text('Typically, the time between being infected and when symptoms start (incubation period) is 7 to 18 days, depending on the specific parasite you re infected with. However, in some cases it can take up to a year for symptoms to develop.'),
          ),
          Container(
            padding: EdgeInsets.all(8.0),
            child: Text('The initial symptoms of malaria are flu-like and include:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.green,
                )),
          ),
          Container(
            padding: EdgeInsets.all(8.0),
            child: Text('a high temperature of 38C or above'),
          ),
          Container(
            padding: EdgeInsets.all(8.0),
            child: Text('feeling hot and shivery'),
          ),
          Container(
            padding: EdgeInsets.all(8.0),
            child: Text('headaches'),
          ),
          Container(
            padding: EdgeInsets.all(8.0),
            child: Text('vomiting'),
          ),
          Container(
            padding: EdgeInsets.all(8.0),
            child: Text('diarrhoea'),
          ),
          Container(
            padding: EdgeInsets.all(8.0),
            child: Text('generally feeling unwell'),
          ),
          Container(
            padding: EdgeInsets.all(8.0),
            child: Text('These symptoms are often mild and can sometimes'
    ' be difficult to identify as malaria. With some types of malaria, '
    'the symptoms occur in 48-hour cycles. During these cycles,you feel cold at first with shivering. You then develop a high temperature, accompanied by severe sweating and fatigue.These symptoms usually last between 6 and 12 hours.The most serious type of malaria is caused by the Plasmodium falciparum parasite. Without prompt treatment, this type could lead to you quickly developing severe and life-threatening complications, such as breathing problems and organ failure.'),
          ),
          Container(
            padding: EdgeInsets.all(8.0),
            child: Text('Medication',style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.green,

            )),
          ),

          Container(
            padding: EdgeInsets.all(8.0),
            child: Text('The most common antimalarial drugs include:'),
          ),

          Container(
            padding: EdgeInsets.all(8.0),
            child: Text('1 . Artemisinin-based combination therapies (ACTs). '),
          ),
          Container(
            padding: EdgeInsets.all(8.0),
            child: Text('ACTs are, in many cases, the first line treatment for malaria.'
                ' There are several different types of ACTs. Examples include artemether-lumefantrine (Coartem) '
                'and artesunate-amodiaquine. Each ACT is a combination of two or more drugs that work '
                'against the malaria parasite in different ways.'),
          ),
          Container(
            padding: EdgeInsets.all(8.0),
            child: Text('2 . Chloroquine phosphate.  '),
          ),

          Container(
            padding: EdgeInsets.all(8.0),
            child: Text('Chloroquine is the preferred treatment for any parasite '
                'that is sensitive to the drug. But in many parts of the world, '
                'the parasites that cause malaria are resistant to chloroquine, '
                'and the drug is no longer an effective treatment.'),
          ),
          Container(
            padding: EdgeInsets.all(8.0),
            child: Text('Other common antimalarial drugs include:'),
          ),
          Container(
            padding: EdgeInsets.all(8.0),
            child: Text('Combination of atovaquone and proguanil (Malarone)'),
          ),
          Container(
            padding: EdgeInsets.all(8.0),
            child: Text('Quinine sulfate (Qualaquin) with doxycycline (Vibramycin, Monodox, others)'),
          ),
          Container(
            padding: EdgeInsets.all(8.0),
            child: Text('Mefloquine'),
          ),
          Container(
            padding: EdgeInsets.all(8.0),
            child: Text('Primaquine phosphate'),
          ),
        ],
      ),
    );
  }
}
