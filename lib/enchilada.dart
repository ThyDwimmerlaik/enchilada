library enchilada;
import 'dart:convert';
import 'package:http/http.dart' as http;

class CrCoder {
  sendRequest(String ep, Map bodyRequest) async {
    var response = await http.post(ep, body: bodyRequest);
    if(response.statusCode == 200){
      return json.decode(utf8.decode(response.bodyBytes));
    } else {
      return null;
    }
  }
}
