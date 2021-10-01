
import 'package:flutter/material.dart';
import 'package:flutterfacebookui/models/post.dart';
import 'package:flutterfacebookui/widgets/online_widget.dart';
import 'package:flutterfacebookui/widgets/post_widget.dart';
import 'package:flutterfacebookui/widgets/separator_widget.dart';
import 'package:flutterfacebookui/widgets/stories_widget.dart';
import 'package:flutterfacebookui/widgets/write_something_widget.dart';

class HomeTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          WriteSomethingWidget(),
          SeparatorWidget(),
          OnlineWidget(),
          SeparatorWidget(),
          StoriesWidget(),
          for(Post post in posts)
          Column(
            children: <Widget>[
              SeparatorWidget(),
              PostWidget(post: post),
            ],
          ),
          SeparatorWidget(),
        ],
      ),
    );
  }
}