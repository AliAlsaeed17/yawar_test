import 'dart:io';
import 'package:firebase_storage/firebase_storage.dart';

class FirebaseStorageHelper {
  static Future<String> uploadFile(File file, String fileName) async {
    final Reference ref = FirebaseStorage.instance.ref().child(fileName);
    final UploadTask uploadTask = ref.putFile(file);
    final TaskSnapshot taskSnapshot = await uploadTask;

    if (taskSnapshot.state == TaskState.success) {
      final String downloadUrl = await ref.getDownloadURL();
      return downloadUrl;
    } else {
      throw Exception('Failed to upload file to Firebase Storage');
    }
  }
}
