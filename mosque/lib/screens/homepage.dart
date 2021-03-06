import 'package:flutter/material.dart';
import 'package:mosque/demodata.dart';
import 'package:mosque/models/mosque/mosqueController.dart';
import 'package:mosque/screens/addMosque.dart';
import 'package:mosque/screens/allnearbymosque.dart';
import 'package:mosque/theme/sharedStyle.dart';
import 'package:mosque/widgets/mosquewidget.dart';
import 'package:scoped_model/scoped_model.dart';


class HomePage extends StatefulWidget {

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: ListTile(
          title: Text(
            'Hello Bassel',
            style: secondaryTextStyle,
          ),
          subtitle: Text(
            'Cairo, Egypt',
            style: primaryTextStyle
          ),
        ),
        actions: [
          InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (_) {return AddMosque();}));
            },
            child: CircleAvatar(
              minRadius: 25.0,
              maxRadius: 25.0,
              backgroundColor: Colors.white,
              backgroundImage: NetworkImage('https://avatars.githubusercontent.com/u/44323531?v=4'),
            ),
          ),
        ],
        elevation: 0.0,
      ),
      body: Container(
        margin: EdgeInsets.all(10.0),
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Container(
              height: 200.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                image: DecorationImage(
                  image: NetworkImage('https://traveler.marriott.com/wp-content/uploads/2018/09/GI_815359526_CitadelView_Cairo.jpg'),
                  fit: BoxFit.fill,
                  colorFilter: ColorFilter.mode(Colors.black54, BlendMode.color)
                ),
              ),
              alignment: Alignment.centerLeft,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    'Dhur\n 12:00 PM',
                    style: primaryWhiteTextStyle
                  ),
                  Text(
                    '  Next Pary: Asr\n   15:40',
                    style: primaryWhiteTextStyle
                  ),
                ]
              ),
            ),
            ListTile(
              title: Text(
                'Nearby Mosques',
                style: primaryTextStyle,
              ),
              trailing: Icon(Icons.arrow_forward_ios, color: Colors.black, size: 20.0),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(fullscreenDialog: true, builder: (_) {return AllNearbyMosque();}));
              },
            ),
            ScopedModelDescendant(
              builder: (context, child, MosqueController model) {
                return Container(
                  height: MediaQuery.of(context).size.height/2,
                  child: model.allMosques.isEmpty ? Center(child: Text('No Mosques Found', style: primaryTextStyle)) :
                   ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: model.allMosques.length,
                    itemBuilder: (context, index) {
                      return MosqueItem(model.allMosques[index].img);
                    }
                  ),
                );
              }
            ),
          ],
        ),
      ),
    );
  }
}