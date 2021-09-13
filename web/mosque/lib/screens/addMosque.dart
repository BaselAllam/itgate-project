import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:mosque/theme/sharedStyle.dart';
import 'package:mosque/widgets/fields.dart';



class AddMosque extends StatefulWidget {

  @override
  _AddMosqueState createState() => _AddMosqueState();
}

class _AddMosqueState extends State<AddMosque> {

TextEditingController mosqueNameController = TextEditingController();

GlobalKey<FormState> mosqueNameKey = GlobalKey<FormState>();

GlobalKey<FormState> formKey = GlobalKey<FormState>();

File? pickedImage;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Add Mosque',
          style: secondaryTextStyle,
        ),
        iconTheme: IconThemeData(color: primaryAppColor, size: 20.0),
        leading: IconButton(
          icon: Icon(Icons.close),
          onPressed: () {
            Navigator.pop(context);
          }
        ),
        elevation: 0.0,
      ),
      body: Container(
        margin: EdgeInsets.all(10.0),
        child: Form(
          key: formKey,
          child: ListView(
            scrollDirection: Axis.vertical,
            children: [
              Column(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width/2,
                    height: MediaQuery.of(context).size.height/3,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: pickedImage == null ? DecorationImage(
                        image: NetworkImage('https://icons-for-free.com/iconfiles/png/512/man+icon-1320184411389497968.png'),
                        fit: BoxFit.fill
                      ) : DecorationImage(
                        image: FileImage(pickedImage!),
                        fit: BoxFit.fill
                      )
                    ),
                    alignment: Alignment.topRight,
                    child: IconButton(
                      icon: Icon(Icons.add_a_photo),
                      color: Colors.black,
                      iconSize: 20.0,
                      onPressed: () async {
                        PickedFile? _picker = await ImagePicker.platform.pickImage(source: ImageSource.camera);
                        setState(() {
                          pickedImage = File(_picker!.path);
                        });
                      }
                    ),
                  ),
                ],
              ),
              field('Mosque Name', Icons.text_fields, TextInputType.text, mosqueNameController, false, SizedBox(), mosqueNameKey),
              ListTile(
                title: Text(
                  'Pick Location',
                  style: primaryTextStyle
                ),
                trailing: Icon(Icons.location_on, color: Colors.black, size: 20.0),
              ),
              Column(
              children: [
                TextButton(
                  child: Text(
                    'Add Mosque',
                    style: primaryWhiteTextStyle,
                  ),
                  style: TextButton.styleFrom(
                    backgroundColor: primaryAppColor,
                    fixedSize: Size(MediaQuery.of(context).size.width/1.5, 40.0),
                  ),
                  onPressed: () {
                    if(!formKey.currentState!.validate()){
                      ScaffoldMessenger.of(context).showSnackBar(
                        snack(Colors.red, 'Some Fields Required!')
                      );
                    }else{
                      ScaffoldMessenger.of(context).showSnackBar(
                        snack(Colors.green, 'Mosque Added Succefully')
                      );
                    }
                  },
                ),
              ],
            ),
            ]
          ),
        ),
      ),
    );
  }
}