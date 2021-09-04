import 'package:flutter/material.dart';
import 'package:mosque/demodata.dart';
import 'package:mosque/widgets/mosquewidget.dart';


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
            style: TextStyle(color: Color(0xff34deeb), fontSize: 17.0)
          ),
          subtitle: Text(
            'Cairo, Egypt',
            style: TextStyle(color: Colors.black, fontSize: 20.0)
          ),
        ),
        actions: [
          CircleAvatar(
            minRadius: 25.0,
            maxRadius: 25.0,
            backgroundColor: Colors.white,
            backgroundImage: NetworkImage('https://avatars.githubusercontent.com/u/44323531?v=4'),
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
                    style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '  Next Pary: Asr\n   15:40',
                    style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ]
              ),
            ),
            ListTile(
              title: Text(
                'Nearby Mosques',
                style: TextStyle(color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold),
              ),
              trailing: Icon(Icons.arrow_forward_ios, color: Colors.black, size: 20.0)
            ),
            Container(
              height: MediaQuery.of(context).size.height/2,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: mosquesImage.length,
                itemBuilder: (context, index) {
                  return MosqueItem(mosquesImage[index]);
                }
              ),
            ),
          ],
        ),
      ),
    );
  }
}