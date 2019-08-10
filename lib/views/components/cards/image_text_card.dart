import 'package:flutter/material.dart';
import 'package:pt_project_01/models/album.dart';

class ImageTextCard extends StatelessWidget {
  final Album album;

  const ImageTextCard({Key key, @required this.album}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    //declare variables for shaping
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.height;
    return Container(
      //margin: EdgeInsets.all(15),

      //the shaping variables
      height: height / 3,
      
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.red,
      ),
      child: Stack(
        children: <Widget>[
          Container(
            height: height / 3,
    
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                    image: AssetImage(album.cover),fit: BoxFit.cover)),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: EdgeInsets.all(5),
              height: height/8,
              width: width/2,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(15),
                  bottomRight: Radius.circular(15)
                )
              ),
              child: Text(
                album.title,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
