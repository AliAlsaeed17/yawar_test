import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:yawar_test/data_layer/models/media.dart';

class PostController extends GetxController {
  TextEditingController postTextController = TextEditingController();
  List<Media> postMedia = [];
  var isLoading = false.obs;

  Future<void> addPost() async {}
}
