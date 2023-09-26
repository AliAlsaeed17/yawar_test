import 'package:flutter/material.dart';
import 'package:yawar_test/bussiness_layer/helpers/date_formatter_helper.dart';
import 'package:yawar_test/data_layer/models/post.dart';
import 'package:yawar_test/presentation_layer/widgets/public/spacer_height.dart';
import 'package:yawar_test/presentation_layer/widgets/public/spacer_width.dart';

class PostContainer extends StatelessWidget {
  const PostContainer({super.key, required this.post});

  final Post post;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.grey,
                  backgroundImage: !post.profile!.hasMediaProfile
                      ? AssetImage('assets/images/user-default.png')
                      : null,
                ),
                spacerWidth(),
                Text(
                  '${post.profile!.name.toString()}',
                ),
              ],
            ),
            if (!post.profile!.isFriend)
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.group_add_rounded,
                  color: Colors.grey,
                ),
              ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 55),
          child: Text(
            DateFormatterHelper.getFormated(post.updatedAt),
          ),
        ),
        spacerHeight(height: 22),
        if (post.content != null)
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              post.content.toString(),
            ),
          ),
        spacerHeight(height: 22),
        if (post.media!.isNotEmpty)
          ...post.media!.map((media) {
            if (media.mediaType == "Image") {
              return Container(
                width: double.infinity,
                height: 100,
                margin: const EdgeInsets.only(bottom: 10),
                child: Image.asset(
                  'assets/images/user-default.png',
                  fit: BoxFit.contain,
                ),
              );
            } else {
              return Container();
            }
          }).toList(),
        spacerHeight(height: 22),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            if (post.interactionsCount! > 0)
              Text(
                '${post.interactionsCount} reactions',
              ),
            Row(
              children: [
                if (post.commentsCount! > 0)
                  Text(
                    '${post.commentsCount} comments',
                  ),
                spacerWidth(width: 5),
                if (post.sharesCount! > 0)
                  Text(
                    '${post.sharesCount} shares',
                  ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
