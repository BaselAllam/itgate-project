import 'package:flutter/material.dart';
import 'package:mosque/demodata.dart';
import 'package:mosque/screens/addMosque.dart';
import 'package:mosque/theme/sharedStyle.dart';
import 'package:mosque/widgets/mosquewidget.dart';



class AllNearbyMosque extends StatefulWidget {

  @override
  _AllNearbyMosqueState createState() => _AllNearbyMosqueState();
}

class _AllNearbyMosqueState extends State<AllNearbyMosque> {
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
        iconTheme: IconThemeData(color: primaryAppColor, size: 20.0),
        leading: IconButton(
          icon: Icon(Icons.close),
          onPressed: () {
            Navigator.pop(context);
          }
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
      body: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: mosquesImage.length,
        itemBuilder: (context, index) {
          return MosqueItem(mosquesImage[index]);
        }
      ),
    );
  }
}