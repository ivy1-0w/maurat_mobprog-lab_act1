import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants.dart';
import 'custom_font.dart';
import 'post_action_button.dart';

class NewsFeedCard extends StatefulWidget {
  final String userName;
  final String profileImage;
  final String currentUserImage;
  final String postContent;
  final String date;
  final int numOfLikes;
  final bool hasImage;
  final String? postImage;

  const NewsFeedCard({
    super.key,
    required this.userName,
    required this.profileImage,
    required this.currentUserImage,
    required this.postContent,
    required this.date,
    this.numOfLikes = 0,
    this.hasImage = false,
    this.postImage,
  });

  @override
  State<NewsFeedCard> createState() => _NewsFeedCardState();
}

class _NewsFeedCardState extends State<NewsFeedCard> {
  late int likes;
  bool liked = false;

  @override
  void initState() {
    super.initState();
    likes = widget.numOfLikes;
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(ScreenUtil().setSp(10)),
      child: Padding(
        padding: EdgeInsets.all(ScreenUtil().setSp(10)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 20,
                  backgroundImage: AssetImage(widget.profileImage),
                ),
                SizedBox(
                  width: ScreenUtil().setWidth(10),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomFont(
                      text: widget.userName,
                      fontSize: ScreenUtil().setSp(15),
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                    Row(
                      children: [
                        CustomFont(
                          text: widget.date,
                          fontSize: ScreenUtil().setSp(12),
                          color: Colors.grey,
                        ),
                        SizedBox(
                          width: ScreenUtil().setWidth(3),
                        ),
                        Icon(
                          Icons.public,
                          size: ScreenUtil().setSp(15),
                          color: Colors.grey,
                        ),
                      ],
                    ),
                  ],
                ),
                const Spacer(),
                const Icon(Icons.more_horiz),
              ],
            ),

            SizedBox(
              height: ScreenUtil().setHeight(10),
            ),

            CustomFont(
              text: widget.postContent,
              fontSize: ScreenUtil().setSp(12),
              color: Colors.black,
            ),

            SizedBox(
              height: ScreenUtil().setHeight(10),
            ),

            widget.hasImage && widget.postImage != null
                ? Container(
                    width: double.infinity,
                    height: ScreenUtil().setHeight(250),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(widget.postImage!),
                        fit: BoxFit.cover,
                      ),
                    ),
                  )
                : const SizedBox.shrink(),

            SizedBox(
              height: ScreenUtil().setHeight(10),
            ),

            Row(
              children: [
                Icon(
                  Icons.thumb_up,
                  color: liked ? FB_PRIMARY : Colors.grey,
                  size: 18,
                ),
                SizedBox(
                  width: ScreenUtil().setWidth(5),
                ),
                CustomFont(
                  text: '$likes Likes',
                  fontSize: ScreenUtil().setSp(12),
                  color: Colors.grey,
                ),
              ],
            ),

            const Divider(),

            Row(
              children: [
                PostActionButton(
                  icon: liked
                      ? Icons.thumb_up
                      : Icons.thumb_up_outlined,
                  text: liked ? 'Liked' : 'Like',
                  onTap: () {
                    setState(() {
                      if (liked) {
                        likes--;
                      } else {
                        likes++;
                      }
                      liked = !liked;
                    });
                  },
                ),
                PostActionButton(
                  icon: Icons.comment,
                  text: 'Comment',
                  onTap: () {},
                ),
                PostActionButton(
                  icon: Icons.share,
                  text: 'Share',
                  onTap: () {},
                ),
              ],
            ),

            const Divider(),

            Row(
              children: [
                CircleAvatar(
                  radius: 12,
                  backgroundImage:
                      AssetImage(widget.currentUserImage),
                ),
                SizedBox(
                  width: ScreenUtil().setWidth(10),
                ),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.only(
                      left: ScreenUtil().setSp(10),
                    ),
                    alignment: Alignment.centerLeft,
                    height: ScreenUtil().setHeight(35),
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(
                        ScreenUtil().setSp(15),
                      ),
                    ),
                    child: CustomFont(
                      text: 'Write a comment...',
                      fontSize: ScreenUtil().setSp(11),
                      color: Colors.grey,
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(
              height: ScreenUtil().setHeight(10),
            ),

            CustomFont(
              text: 'View comments',
              fontSize: ScreenUtil().setSp(12),
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ],
        ),
      ),
    );
  }
}