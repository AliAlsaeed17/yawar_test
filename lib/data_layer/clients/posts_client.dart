import 'package:http/http.dart' as http;
import 'package:yawar_test/constants/api_links.dart';

class PostsClient {
  Future<dynamic> getPostsByPage(pageIndex) async {
    var response =
        await http.get(Uri.parse("$baseUrl$postsLink?page=$pageIndex"));
    print(response.body);
    if (response.statusCode == 200) {
      return response.body;
    } else {
      return "";
    }
  }
}
