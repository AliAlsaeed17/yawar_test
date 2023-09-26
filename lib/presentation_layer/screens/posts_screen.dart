import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yawar_test/bussiness_layer/controllers/posts_controller.dart';
import 'package:yawar_test/constants/get_routes.dart';
import 'package:yawar_test/presentation_layer/widgets/post_container.dart';
import 'package:yawar_test/presentation_layer/widgets/public/spacer_height.dart';
import 'package:yawar_test/presentation_layer/widgets/public/yt_appbar.dart';

class PostsScreen extends StatefulWidget {
  const PostsScreen({super.key});

  @override
  State<PostsScreen> createState() => _PostsScreenState();
}

class _PostsScreenState extends State<PostsScreen> {
  final scrollController = ScrollController();
  final postsController = Get.put(PostsController());
  int offsetCount = 0;

  @override
  void initState() {
    super.initState();
    scrollController.addListener(() {
      if (scrollController.position.pixels ==
          scrollController.position.maxScrollExtent) {
        offsetCount = offsetCount + 1;

        postsController.addToPosts(offsetCount);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ytAppBar(title: 'Posts'),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            children: [
              Expanded(
                child: GetBuilder<PostsController>(
                    init: postsController,
                    builder: (context) {
                      return ListView.separated(
                        controller: scrollController,
                        itemBuilder: (context, index) {
                          if (index < postsController.currentPosts.length) {
                            return PostContainer(
                                post: postsController.currentPosts[index]);
                          } else {
                            return Center(
                              child: CircularProgressIndicator(),
                            );
                          }
                        },
                        separatorBuilder: (context, index) =>
                            spacerHeight(height: 22),
                        itemCount: postsController.currentPosts.length + 1,
                      );
                    }),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.toNamed(AppRoutes.addPostScreen);
        },
        child: const Icon(
          Icons.add,
          size: 40,
        ),
      ),
    );
  }
}
