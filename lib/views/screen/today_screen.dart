import 'package:flutter/material.dart';
import 'package:pt_project_01/models/album.dart';
import 'package:pt_project_01/views/components/cards/album_card.dart';
import 'package:pt_project_01/views/components/cards/image_text_card.dart';
import 'package:pt_project_01/views/components/cards/sidedetailed_card.dart';
import 'package:pt_project_01/views/components/headers/simple_header.dart';
//import 'package:pt_project_01/models/album.dart';

//import 'package:pt_project_01/views/components/cards/image_text_card.dart';
//import 'package:pt_project_01/views/components/cards/sidedetailed_card.dart';
//import 'package:pt_project_01/views/components/cards/album_card.dart';

class TodayScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        SliverList(
          delegate: SliverChildListDelegate(
              [SimpleHeader(date: '3 august 2019', day: 'Today', padding: 10)]),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
              return AlbumCard(
                album: albums[index],
                padding: 10,
              );
            },
            childCount: albums.length,
          ),
        ),
           SliverList(
          delegate: SliverChildListDelegate(
              [SimpleHeader(
                date: '18 March 2019', 
                day: 'Monday',
                 padding: 10)
                 ]),
        ),
        SliverGrid(
          delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
              return Padding(
                padding: EdgeInsets.only(
                  left: index.isEven ? 20 : 0,
                  right: index.isOdd ? 20 : 0,
                ),
                child: ImageTextCard(
                  album: albums[index],
                ),
              );
            },
            childCount: albums.length,
          ),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, mainAxisSpacing: 5, crossAxisSpacing: 5),
        ),
        SliverList(
          delegate: SliverChildListDelegate(
              [SimpleHeader(
                date: '17 March 2019', 
                day: 'Sunday',
                 padding: 10)
                 ]),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate((BuildContext context,int index){
            return SideDetailedCard();
          },
          childCount: albums.length,
          ),
          )



      ],
    );

    // return SideDetailedCard();
    // return CustomScrollView(
    //   slivers: <Widget>[
    //     SliverList(
    //       delegate: SliverChildListDelegate([
    //         SizedBox(
    //           height: 50,
    //         ),
    //         Padding(
    //           padding: const EdgeInsets.only(left: 20),
    //           child: Text('18 march',
    //               style: TextStyle(color: Colors.grey[600], fontSize: 16)),
    //         ),
    //         Padding(
    //             padding: const EdgeInsets.only(left: 20),
    //             child: Text(
    //               'Monday',
    //               style: TextStyle(color: Colors.black, fontSize: 30),
    //             )),
    //         SizedBox(
    //           height: 20,
    //         )
    //       ]),
    //     ),
    //     SliverGrid(
    //       delegate: SliverChildBuilderDelegate(
    //         (BuildContext context, int index) {
    //           return Padding(
    //             padding: EdgeInsets.only(
    //               left: index.isEven ? 20 : 0,
    //               right: index.isOdd ? 20 : 0,
    //             ),
    //             child: ImageTextCard(
    //               album: albums[index],
    //             ),
    //           );
    //         },
    //         childCount: albums.length,
    //       ),
    //       gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
    //           crossAxisCount: 2, mainAxisSpacing: 5, crossAxisSpacing: 5),
    //     )
    //   ],
    // );
    // return ListView.builder(
    //   itemCount: albums.length,
    //   itemBuilder: (BuildContext context, int index) {
    //     return ImageTextCard(
    //       album: albums[index],
    //     );
    //   },
    // );
  }
}
