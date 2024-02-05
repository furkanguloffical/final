import 'dart:convert';

class Api {
  static const String baseUrl = 'https://reqres.in/api';

  static Future<Map<String, dynamic>> fetchData(String endpoint) async {
    final url = Uri.parse('$baseUrl/$endpoint');

    try {
      var http;
      final response = await http.get(url);

      if (response.statusCode == 200) {
        final Map<String, dynamic> data = json.decode(response.body);
        return data;
      } else {
        throw Exception(
            'Failed to load data. Status code: ${response.statusCode}');
      }
    } catch (error) {
      throw Exception('Failed to load data: $error');
    }
  }

  static Future<Map<String, dynamic>> postData(
      String endpoint, Map<String, dynamic> body) async {
    final url = Uri.parse('$baseUrl/$endpoint');

    try {
      var http;
      final response = await http.post(
        url,
        headers: {'Content-Type': 'application/json'},
        body: json.encode(body),
      );

      if (response.statusCode == 200) {
        final Map<String, dynamic> data = json.decode(response.body);
        return data;
      } else {
        throw Exception(
            'Failed to post data. Status code: ${response.statusCode}');
      }
    } catch (error) {
      throw Exception('Failed to post data: $error');
    }
  }
}
