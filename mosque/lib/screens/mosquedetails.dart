import 'package:flutter/material.dart';
import 'package:mosque/demodata.dart';
import 'package:mosque/theme/sharedStyle.dart';


class MosqueDetails extends StatefulWidget {

  @override
  _MosqueDetailsState createState() => _MosqueDetailsState();
}

class _MosqueDetailsState extends State<MosqueDetails> {

  bool isFav = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Container(
          height: MediaQuery.of(context).size.height/2,
          child: Stack(
            children: [
              Container(
                height: MediaQuery.of(context).size.height/2.5,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(mosquesImage[0]),
                    fit: BoxFit.fill
                  ),
                ),
                alignment: Alignment.topLeft,
                padding: EdgeInsets.only(top: 20.0),
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  child: IconButton(
                    icon: Icon(Icons.close),
                    color: primaryAppColor,
                    iconSize: 25.0,
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
              ),
              Positioned(
                height: MediaQuery.of(context).size.height/3,
                top: 150.0,
                left: 20.0,
                right: 20.0,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  padding: EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        'Mosque Name',
                        style: primaryTextStyle,
                      ),
                      Text(
                        '20 Mile Away',
                        style: secondaryTextStyle,
                      ),
                      Text(
                        'Heliopolis Cairo Egypt',
                        style: secondaryTextStyle,
                      ),
                      Text(
                        '+2010101010',
                        style: secondaryTextStyle,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          icon(Icons.location_on, () {}),
                          icon(Icons.phone, () {}),
                          icon(
                            isFav == true ? Icons.favorite : Icons.favorite_border,
                            () {
                              setState(() {
                                isFav = !isFav;
                              }); // Notify the framework with changes to recall build mthod
                            }
                          ),
                          icon(Icons.more_horiz, () {})
                        ],
                      ),
                    ],
                  )
                ),
              ),
            ],
          ),
        ),
        Container(
          alignment: Alignment.center,
          margin: EdgeInsets.all(10.0),
          child: Table(
            columnWidths: {
              1 : FlexColumnWidth(1),
              2 : FlexColumnWidth(0.5),
              3 : FlexColumnWidth(1),
            },
            children: [
              tableRowItem('Prayer', 'Adhan', 'Iqama'),
              tableRowItem('Fajir', '3:45', '4:00'),
              tableRowItem('Dhuhar', '12:00', '12:15'),
              tableRowItem('Asr', '3:30', '3:45'),
              tableRowItem('Maghrib', '6:00', '6:10'),
              tableRowItem('Eeshaa', '7:30', '7:45'), 
            ]
          ),
        ),
        ]
      ),
    );
  }
  icon(IconData icon, Function onTap) {
    return IconButton(
      icon: Icon(icon),
      color: Colors.grey,
      iconSize: 25.0,
      onPressed: () {
        onTap();
      }
    );
  }
 TableRow tableRowItem(String txt1, String txt2, String txt3) {
    return TableRow(
      children: [
        rowText(txt1),
        rowText(txt2),
        rowText(txt3)
      ]
    );
  }
  Text rowText(String txt) {
    return Text('$txt\n', style: primaryTextStyle);
  }
}