import 'dart:convert';

import 'package:yawar_test/data_layer/clients/posts_client.dart';
import 'package:yawar_test/data_layer/models/post.dart';

class PostsRepo {
  PostsClient postsClient = PostsClient();

  Future<List<Post>> getPostsByPage(pageIndex) async {
    var response = await postsClient.getPostsByPage(pageIndex);
    if (response.isNotEmpty) {
      final posts = json.decode(response);
      return posts['data']['items']
          .map<Post>((json) => Post.fromJson(json))
          .toList();
    }
    return [];
  }
}
