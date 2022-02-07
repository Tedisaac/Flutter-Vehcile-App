import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:simpleapp/constants/strings.dart';
import 'package:simpleapp/models/tokenInfo.dart';

class API_Manager{

  Future<TokenInfo> sendCredentials(String acctId, String secret) async{
    final response = await http.post(
      Uri.parse(Strings.token_url),
      headers:  <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, String>{
        'acctID' : acctId,
        'secret' : secret,
      }),
    );
    if(response.statusCode == 200){

      return TokenInfo.fromJson(jsonDecode(response.body));
    }else {
      throw Exception('Error');
    }

  }
}