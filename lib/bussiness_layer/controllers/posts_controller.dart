import 'package:get/get.dart';
import 'package:yawar_test/data_layer/models/post.dart';
import 'package:yawar_test/data_layer/repositories/posts_repo.dart';

class PostsController extends GetxController {
  List<Post> currentPosts = [];
  List<Post> currentPagePosts = [];
  PostsRepo postsRepo = PostsRepo();
  var isLoading = false.obs;

  @override
  void onInit() async {
    await getPosts();
    super.onInit();
  }

  Future<void> getPosts() async {
    isLoading.value = true;
    currentPosts = await postsRepo.getPostsByPage(1);
    print(currentPosts);
    isLoading.value = false;
    update();
  }

  Future<void> addToPosts(iii) async {
    currentPagePosts = await postsRepo.getPostsByPage(iii);
    currentPosts.addAll(currentPagePosts);
    print(currentPosts);
    update();
  }
}
