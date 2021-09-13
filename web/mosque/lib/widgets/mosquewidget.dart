import 'package:flutter/material.dart';
import 'package:mosque/screens/mosquedetails.dart';
import 'package:mosque/theme/sharedStyle.dart';


class MosqueItem extends StatefulWidget {

  final String image;

  MosqueItem(this.image);

  @override
  _MosqueItemState createState() => _MosqueItemState();
}

class _MosqueItemState extends State<MosqueItem> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (_) {return MosqueDetails();}));
      },
      child: Container(
        width: MediaQuery.of(context).size.width/1.5,
        margin: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          image: DecorationImage(
            image: NetworkImage(widget.image),
            fit: BoxFit.fill,
            colorFilter: ColorFilter.mode(Colors.black54, BlendMode.color)
          ),
        ),
        padding: EdgeInsets.only(left: 10.0, bottom: 10.0),
        alignment: Alignment.bottomLeft,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Mosque Name',
              style: primaryWhiteTextStyle
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 10.0),
              padding: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Text(
                'Duhr 12:00 PM',
                style: primaryTextStyle
              ),
            ),
            DecoratedBox(
              decoration: BoxDecoration(
                color: Colors.transparent,
                border: Border.all(color: Colors.white, width: 1.5),
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  'Donate',
                  style: primaryWhiteTextStyle
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}