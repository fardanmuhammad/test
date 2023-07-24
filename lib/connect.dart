import 'dart:convert';
import 'package:http/http.dart' as http;

class Connect {
  Future fetchDataPost() async {
    final String apiUrl =
        "http://192.168.100.20:8080/flutterapi/crudflutter/read.php";
    var result = await http.get(Uri.parse(apiUrl));

    print(json.decode(result.body));
    return json.decode(result.body);
  }
}
