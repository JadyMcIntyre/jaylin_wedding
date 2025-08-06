import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:cached_network_image/cached_network_image.dart';

class PinterestService {
  final String accessToken;
  PinterestService({required this.accessToken});

  Future<List<String>> searchPins(String query) async {
    final uri = Uri.https('api.pinterest.com', '/v5/search/pins', {'query': query});
    final resp = await http.get(uri, headers: {'Authorization': 'Bearer $accessToken'});
    if (resp.statusCode != 200) {
      throw Exception('Pinterest API error: ${resp.statusCode}');
    }
    final data = jsonDecode(resp.body) as Map<String, dynamic>;
    final items = data['items'] as List<dynamic>? ?? [];
    return items
        .map<String>((pin) {
          // try “images.orig.url” first
          final imgs = pin['images'] as Map<String, dynamic>?;
          if (imgs != null && imgs['orig'] != null) {
            return imgs['orig']['url'] as String;
          }
          // fallback: first available size
          if (imgs != null && imgs.isNotEmpty) {
            final entry = imgs.entries.first.value as Map<String, dynamic>;
            return entry['url'] as String;
          }
          // last fallback: media.images.orig.url
          final media = pin['media'] as Map<String, dynamic>?;
          final mImgs = media?['images'] as Map<String, dynamic>?;
          if (mImgs != null && mImgs['orig'] != null) {
            return (mImgs['orig'] as Map<String, dynamic>)['url'] as String;
          }
          return '';
        })
        .where((url) => url.isNotEmpty)
        .toList();
  }
}
