import 'dart:convert';

import 'package:http/http.dart' as http;

class AppHttpHelper {
  static const baseUrl = "";

  // helper method to GET request
  static Future<Map<String, dynamic>> get(String endpoint) async {
    final response = await http.get(Uri.parse('$baseUrl/$endpoint'));
    return handleResponse(response);
  }

  // Helper method to make POST request
  static Future<Map<String, dynamic>> post(
      String endpoint, dynamic data) async {
    final response = await http.post(Uri.parse('$baseUrl/$endpoint'),
        headers: {'Content-Type': 'Application/json'}, body: json.encode(data));
    return handleResponse(response);
  }

  // Helper method to make PUT request
  static Future<Map<String, dynamic>> put(String endpoint, dynamic data) async {
    final response = await http.put(Uri.parse('$baseUrl/$endpoint'),
        headers: {'Content-Type': 'Application/json'}, body: json.encode(data));
    return handleResponse(response);
  }

  // Handle the HTTP Response
  static Map<String, dynamic> handleResponse(http.Response response) {
    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  }
}
