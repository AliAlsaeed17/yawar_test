import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yawar_test/bussiness_layer/controllers/post_controller.dart';
import 'package:yawar_test/presentation_layer/widgets/public/spacer_height.dart';
import 'package:yawar_test/presentation_layer/widgets/public/spacer_width.dart';
import 'package:yawar_test/presentation_layer/widgets/public/yt_appbar.dart';

class AddPostScreen extends StatelessWidget {
  AddPostScreen({super.key});

  final postController = Get.put(PostController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ytAppBar(title: 'Add Post'),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            children: [
              TextField(
                controller: TextEditingController(),
                maxLines: 4,
                decoration: InputDecoration(
                  hintText: ' Enter post text',
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)),
                ),
              ),
              spacerHeight(),
              Container(
                padding: const EdgeInsets.all(30),
                decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.image_outlined,
                    ),
                    spacerWidth(),
                    const Text(
                      'Select image or video',
                    ),
                  ],
                ),
              ),
              spacerHeight(),
              ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  shape: MaterialStatePropertyAll<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  minimumSize: const MaterialStatePropertyAll<Size>(
                    Size(double.infinity, 56),
                  ),
                ),
                child: const Text('Create post'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
