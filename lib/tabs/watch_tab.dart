
import 'package:flutter/material.dart';
import 'package:flutterfacebookui/widgets/separator_widget.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class WatchTab extends StatefulWidget {
  @override
  _WatchTabState createState() => _WatchTabState();
}

class _WatchTabState extends State<WatchTab> {
  String videoUrl1 = 'https://www.youtube.com/'
      'watch?v=NYJ9-ivZKZ0&list=RDNYJ9-ivZKZ0&start_radio=1';
  YoutubePlayerController _controller1;

  String videoUrl2 = 'https://www.youtube.com/'
      'watch?v=w-SYw3Fffcg&list=RDNYJ9-ivZKZ0&index=4';
  YoutubePlayerController _controller2;

  String videoUrl3 = 'https://www.youtube.com/watch?v=I8crD-0XQXs';
  YoutubePlayerController _controller3;
  String videoUrl4 = 'https://www.youtube.com/watch?v=AdMUP2r0qc0';
  YoutubePlayerController _controller4;

  @override
  void initState() {
    super.initState();
    _controller1 = YoutubePlayerController(initialVideoId: YoutubePlayer.convertUrlToId(videoUrl1));
    _controller2 = YoutubePlayerController(initialVideoId: YoutubePlayer.convertUrlToId(videoUrl2));
    _controller3 = YoutubePlayerController(initialVideoId: YoutubePlayer.convertUrlToId(videoUrl3));
    _controller4 = YoutubePlayerController(initialVideoId: YoutubePlayer.convertUrlToId(videoUrl4));
  }

  @override
  void dispose() {
    super.dispose();
    _controller1.dispose();
    _controller2.dispose();
    _controller3.dispose();
    _controller4.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SingleChildScrollView(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(15.0, 15.0, 0.0, 0.0),
                child: Text('Watch', style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold)),
              ),
                ///list view
              Container(
                height: 60.0,
                padding: EdgeInsets.symmetric(vertical: 10.0),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    SizedBox(width: 15.0),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 2.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40.0),
                        color: Colors.grey[300]
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Icon(Icons.videocam, size: 20.0),
                          SizedBox(width: 5.0),
                          Text('Live', style: TextStyle(fontWeight: FontWeight.bold))
                        ],
                      ),
                    ),

                    SizedBox(width: 10.0),

                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 2.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40.0),
                        color: Colors.grey[300]
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Icon(Icons.music_note, size: 20.0),
                          SizedBox(width: 5.0),
                          Text('Music', style: TextStyle(fontWeight: FontWeight.bold))
                        ],
                      ),
                    ),      

                    SizedBox(width: 10.0),

                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 2.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40.0),
                        color: Colors.grey[300]
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Icon(Icons.check_box, size: 20.0),
                          SizedBox(width: 5.0),
                          Text('Following', style: TextStyle(fontWeight: FontWeight.bold))
                        ],
                      ),
                    ), 

                    SizedBox(width: 10.0),

                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 2.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40.0),
                        color: Colors.grey[300]
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Icon(Icons.fastfood, size: 20.0),
                          SizedBox(width: 5.0),
                          Text('Food', style: TextStyle(fontWeight: FontWeight.bold))
                        ],
                      ),
                    ), 

                    SizedBox(width: 10.0),

                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 2.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40.0),
                        color: Colors.grey[300]
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Icon(Icons.gamepad, size: 20.0),
                          SizedBox(width: 5.0),
                          Text('Gaming', style: TextStyle(fontWeight: FontWeight.bold))
                        ],
                      ),
                    ), 

                    SizedBox(width: 15.0),         
                  ],
                ),
              ),

              SeparatorWidget(),
              ///here
              Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.fromLTRB(15.0, 15.0, 0.0, 0.0),
                    child: Row(
                      children: <Widget>[
                        CircleAvatar(
                          backgroundImage: AssetImage('assets/eljoker.png'),
                          radius: 20.0,
                        ),
                        SizedBox(width: 7.0),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text('ElJoker - Monalisa tania', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17.0)),
                            SizedBox(height: 5.0),
                            Text('7h')
                          ],
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: 20.0),

                  YoutubePlayer(controller: _controller1),

                  SizedBox(height: 10.0),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Icon(FontAwesomeIcons.thumbsUp, size: 15.0, color: Colors.blue),
                            Text(' 23'),
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Text('2K comments  •  '),
                            Text('1.3M View'),
                          ],
                        ),
                      ],
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: Divider(height: 30.0),
                  ),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Icon(FontAwesomeIcons.thumbsUp, size: 20.0),
                            SizedBox(width: 5.0),
                            Text('Like', style: TextStyle(fontSize: 14.0)),
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Icon(FontAwesomeIcons.commentAlt, size: 20.0),
                            SizedBox(width: 5.0),
                            Text('Comment', style: TextStyle(fontSize: 14.0)),
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Icon(FontAwesomeIcons.share, size: 20.0),
                            SizedBox(width: 5.0),
                            Text('Share', style: TextStyle(fontSize: 14.0)),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),

              SizedBox(height: 20.0),

              SeparatorWidget(),
                ///to here
              Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.fromLTRB(15.0, 15.0, 0.0, 0.0),
                    child: Row(
                      children: <Widget>[
                        CircleAvatar(
                          backgroundImage: AssetImage('assets/eljoker.png'),
                          radius: 20.0,
                        ),
                        SizedBox(width: 7.0),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text('ElJoker - Hamesh Elsamt', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17.0)),
                            SizedBox(height: 5.0),
                            Text('10h')
                          ],
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: 20.0),

                  YoutubePlayer(controller: _controller2),

                  SizedBox(height: 10.0),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Icon(FontAwesomeIcons.thumbsUp, size: 15.0, color: Colors.blue),
                            Text(' 98'),
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Text('12 comments  •  '),
                            Text('6 shares'),
                          ],
                        ),
                      ],
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: Divider(height: 30.0),
                  ),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Icon(FontAwesomeIcons.thumbsUp, size: 20.0),
                            SizedBox(width: 5.0),
                            Text('Like', style: TextStyle(fontSize: 14.0)),
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Icon(FontAwesomeIcons.commentAlt, size: 20.0),
                            SizedBox(width: 5.0),
                            Text('Comment', style: TextStyle(fontSize: 14.0)),
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Icon(FontAwesomeIcons.share, size: 20.0),
                            SizedBox(width: 5.0),
                            Text('Share', style: TextStyle(fontSize: 14.0)),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),

              SizedBox(height: 20.0),

              SeparatorWidget(),

              Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.fromLTRB(15.0, 15.0, 0.0, 0.0),
                    child: Row(
                      children: <Widget>[
                        CircleAvatar(
                          backgroundImage: AssetImage('assets/raa.png'),
                          radius: 20.0,
                        ),
                        SizedBox(width: 7.0),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text('R3 - MetfaraGh', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17.0)),
                            SizedBox(height: 5.0),
                            Text('3y')
                          ],
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: 20.0),

                  YoutubePlayer(controller: _controller3),

                  SizedBox(height: 10.0),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Icon(FontAwesomeIcons.thumbsUp, size: 15.0, color: Colors.blue),
                            Text(' 120K'),
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Text('232 comments  •  '),
                            Text('76K View'),
                          ],
                        ),
                      ],
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: Divider(height: 30.0),
                  ),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Icon(FontAwesomeIcons.thumbsUp, size: 20.0),
                            SizedBox(width: 5.0),
                            Text('Like', style: TextStyle(fontSize: 14.0)),
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Icon(FontAwesomeIcons.commentAlt, size: 20.0),
                            SizedBox(width: 5.0),
                            Text('Comment', style: TextStyle(fontSize: 14.0)),
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Icon(FontAwesomeIcons.share, size: 20.0),
                            SizedBox(width: 5.0),
                            Text('Share', style: TextStyle(fontSize: 14.0)),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),

              SizedBox(height: 20.0),

              SeparatorWidget(),

              Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.fromLTRB(15.0, 15.0, 0.0, 0.0),
                    child: Row(
                      children: <Widget>[
                        CircleAvatar(
                          backgroundImage: AssetImage('assets/abyu.png'),
                          radius: 20.0,
                        ),
                        SizedBox(width: 7.0),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text('Abyu X X ( Okay', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17.0)),
                            SizedBox(height: 5.0),
                            Text('3M')
                          ],
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: 20.0),

                  YoutubePlayer(controller: _controller4),

                  SizedBox(height: 10.0),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Icon(FontAwesomeIcons.thumbsUp, size: 15.0, color: Colors.blue),
                            Text(' 13K'),
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Text('2892 comments  •  '),
                            Text('434K View'),
                          ],
                        ),
                      ],
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: Divider(height: 30.0),
                  ),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Icon(FontAwesomeIcons.thumbsUp, size: 20.0),
                            SizedBox(width: 5.0),
                            Text('Like', style: TextStyle(fontSize: 14.0)),
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Icon(FontAwesomeIcons.commentAlt, size: 20.0),
                            SizedBox(width: 5.0),
                            Text('Comment', style: TextStyle(fontSize: 14.0)),
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Icon(FontAwesomeIcons.share, size: 20.0),
                            SizedBox(width: 5.0),
                            Text('Share', style: TextStyle(fontSize: 14.0)),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),

              SizedBox(height: 20.0),

              SeparatorWidget(),
            ],
          )
        ),
      ),
    );
  }
}