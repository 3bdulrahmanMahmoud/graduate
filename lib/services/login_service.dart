import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void loginUser({
  required String email,
  required String passowrd,
}) async {
  final url =
      Uri.parse('https://incubator-f9tp.onrender.com/api/v1/users/login');

  Map<String, String> headers = {
    'Content-Type': 'application/json',
  };

  Map<String, dynamic> body = {
    'email': email,
    'password': passowrd,
  };

  try {
    final response =
        await http.post(url, headers: headers, body: jsonEncode(body));

    if (response.statusCode == 200) {
      print('Login successful');
      print('Response: ${response.body}');
    } else {
      print('Failed to login. Status code: ${response.statusCode}');
    }
  } catch (e) {
    print('Error: $e');
  }
}
