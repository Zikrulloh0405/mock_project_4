import 'package:http/http.dart';

class NetworkService {
  static const String baseUrl = "655deeb89f1e1093c59a2ed1.mockapi.io";
  static const String apiProduct = "/university";

  static Future<String> getData(String api) async {
    Uri uri = Uri.https(baseUrl, api);
    Response response = await get(uri);
    return response.body;
  }
}
