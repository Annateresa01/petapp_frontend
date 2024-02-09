import 'dart:convert';

import 'package:http/http.dart'as http;
import 'package:petapp/model/petmodel.dart';

class petser
{
  Future<List<Map<String,dynamic>>> getsearch(String searchterm)async
  {
      final response = await http.post(
        Uri.parse(''),
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode({'searchTerm': searchterm}),
      );

      if (response.statusCode == 200) {
        final List<dynamic> data = jsonDecode(response.body);
        return data.cast<Map<String, dynamic>>();
      } else {
        throw Exception('Failed to load data');
      }
    }
  }









  Future<dynamic> sentdata(String n1,n2,n3,n4) async
  {
    var client = http.Client();
    var apiurl = Uri.parse("http://localhost:3001/api/pets/add");

    var response = await client.post(apiurl, headers: <String, String>{
      "Content-Type": "application/json;charset=UTF-8"
    }, body:jsonEncode(<String, String>{
      "petType": n1,
      "petBreed": n2,
      "petNo": n3,
      "image": n4
    }));

    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    }
    else {
      throw Exception("error");
    }
  }




  Future<List<Petm>> getPet() async{
    var client=http.Client();
    var apiurl=Uri.parse("http://localhost:3001/api/pets/view");
    var response=await client.get(apiurl);
    if(response.statusCode==200)
      {
        return petmFromJson(response.body);
      }
    else
      {
        return [];
      }

  }