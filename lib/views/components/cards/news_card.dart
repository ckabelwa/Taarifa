import 'package:flutter/material.dart';
import 'package:pt_project_01/models/album.dart';

class NewsCard extends StatelessWidget {
  final Album album;

  const NewsCard({Key key, @required this.album}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(20),
        height: MediaQuery.of(context).size.height / 2,
        decoration: BoxDecoration(
            color: Colors.greenAccent, borderRadius: BorderRadius.circular(20)),
        child: Stack(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(album.cover), fit: BoxFit.cover),
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                      topLeft: Radius.circular(20))),
              height: MediaQuery.of(context).size.height / 3,
              width: MediaQuery.of(context).size.width,
            ),
            Align(
              alignment: Alignment.bottomLeft,
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.height/6,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20)),
                    color: Colors.white),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left: 10,right: 10,top: 10),
                      child: Text(
                        'Gaming',
                        style: TextStyle(color: Colors.grey[300], fontSize: 20),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10,right: 10),
                      child: Text(
                        'Soprano announces His New',
                        style: TextStyle(color: Colors.black, fontSize: 27),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10,right: 10),
                      child: Text(
                        'Mozilla has announce a nwe version of its browser for argument reality',
                        style: TextStyle(color: Colors.grey[300], fontSize: 20),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ));
  }
}
