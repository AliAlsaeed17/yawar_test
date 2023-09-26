import 'package:get/get.dart';
import 'package:yawar_test/constants/get_routes.dart';
import 'package:yawar_test/presentation_layer/screens/add_post_screen.dart';
import 'package:yawar_test/presentation_layer/screens/posts_screen.dart';

List<GetPage> getPages = [
  GetPage(
    name: AppRoutes.postsScreen,
    page: () => PostsScreen(),
  ),
  GetPage(
    name: AppRoutes.addPostScreen,
    page: () => AddPostScreen(),
  )
];
