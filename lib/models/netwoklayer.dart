import 'dart:async';
import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:gikuyu_dictionary/models/alphabet.dart';
import 'package:http/http.dart' as http;

// Future<List<Alphabet>> fetchCountry(http.Client client) async {
//   final response = await client.get('http://restcountries.eu/rest/v2/all');
//   // Use the compute function to run parsePhotos in a separate isolate
//   return compute(parseData, response.body);
// }

Future<List<Alphabet>> fetchAlphabets(http.Client client) async {
  var url = "assets/contacts.json";
  var client = new http.Client();
  var request = new http.Request('POST', Uri.parse(url));
  var body = {'type': 'getContacts'};
  request.bodyFields = body;

  var data = await http.post(Uri.parse(url), body: {"type": "getContacts"});
   print(data.body);
  return await compute(parseData, data.body);
}

// A function that will convert a response body into a List<Country>
List<Alphabet> parseData(String responseBody) {
  final parsed = json.decode(responseBody).cast<Map<String, dynamic>>();

  List<Alphabet> list =
  parsed.map<Alphabet>((json) => new Alphabet.fromJson(json)).toList();
  return list;
}