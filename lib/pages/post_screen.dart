import 'package:flutter/material.dart';
import 'package:fluttershare/pages/home.dart';
import 'package:fluttershare/widgets/header.dart';
import 'package:fluttershare/widgets/post.dart';
import 'package:fluttershare/widgets/progress.dart';

class PostScreen extends StatelessWidget {
  final String userId;
  final String postId;

  PostScreen({this.userId, this.postId});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: postsRef.doc(userId).collection("userPosts").doc(postId).get(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return circularProgress();
          }

          Post result = Post.fromDocument(snapshot.data);
          return Center(
            child: Scaffold(
              appBar: header(context,
                  titleText: result.description, removeBackButton: true),
              body: ListView(
                children: [
                  Container(
                    child: result,
                  )
                ],
              ),
            ),
          );
        });
  }
}
