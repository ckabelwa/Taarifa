import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pt_project_01/models/album.dart';

class AlbumCard extends StatelessWidget {
  final Album album;
  final double padding;

  const AlbumCard({Key key, @required this.album, @required this.padding})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(padding),
      height: 400,
      child: Stack(
        children: <Widget>[
          Container(
            height: 400,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                  image: AssetImage(album.avatar), fit: BoxFit.cover),
            ),
          ),
          album.isHot
              ? Padding(
                  padding: const EdgeInsets.only(left: 30, top: 30, right: 30),
                  child: Align(
                    alignment: Alignment.topRight,
                    child: RaisedButton.icon(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      color: Colors.redAccent,
                      icon: Icon(
                        FontAwesomeIcons.fire,
                        color: Colors.white,
                      ),
                      label: Text(
                        'HOT',
                        style: TextStyle(color: Colors.white),
                      ),
                      onPressed: () {},
                    ),
                  ),
                )
              : Container(),
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Container(
                height: 125,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      album.subtitle.toString(),
                      style: TextStyle(fontSize: 30, color: Colors.white),
                    ),
                    Row(
                      children: <Widget>[
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              border: Border.all(color: Colors.white),
                              image: DecorationImage(
                                  image: AssetImage(album.cover),
                                  fit: BoxFit.cover)),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 5),
                            child: Text(
                              album.title.toString(),
                              style: TextStyle(
                                  color: Colors.green,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Align(
                              alignment: Alignment.bottomRight,
                              child: Icon(FontAwesomeIcons.comment)),
                        ),
                        Text(
                          album.comments.toString(),
                          style: TextStyle(
                              color: Colors.green, fontWeight: FontWeight.bold),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
