import 'dart:convert';

import 'package:http/http.dart' as http;

class Posts {
  Future getPost() async {
    String url = "https://jsonplaceholder.typicode.com/posts";
    var response = await http.get(url);
    var data = json.decode(response.body);
    return data;
  }

  Future getNews() async {
    String url = "https://jsonplaceholder.typicode.com/posts";
    var response = await http.get(url, headers: {'accept': 'application/json'});
    var data = json.decode(response.body)['data'];
    return data;
  }

  Future getNepalDetails() async {
    String url = "https://nepalcorona.info/api/v1/data/nepal";
    var response = await http.get(url, headers: {'accept': 'application/json'});
    var data = json.decode(response.body);
    return data;
  }

  Future getFAQ() async {
    String url = "https://nepalcorona.info/api/v1/faqs";
    var response = await http.get(url, headers: {'accept': 'application/json'});
    var data = json.decode(response.body)['data'];
    return data;
  }

  Future getWorldDetails() async {
    String url = "https://data.nepalcorona.info/api/v1/world/history";
    var response = await http.get(url, headers: {'accept': 'application/json'});
    var data = json.decode(response.body);
    return data;
  }
}
