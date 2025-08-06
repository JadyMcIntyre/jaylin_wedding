import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:jaylin_wedding/features/dress_code/services/pinterest_services.dart';

/// 1️⃣ Pinterest API client

/// 2️⃣ The grid widget
class PinterestGrid extends StatefulWidget {
  final String query;
  final String accessToken;
  const PinterestGrid({required this.query, required this.accessToken, super.key});

  @override
  _PinterestGridState createState() => _PinterestGridState();
}

class _PinterestGridState extends State<PinterestGrid> {
  late Future<List<String>> _pinsFuture;

  @override
  void initState() {
    super.initState();
    _pinsFuture = PinterestService(accessToken: widget.accessToken).searchPins(widget.query);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<String>>(
      future: _pinsFuture,
      builder: (context, snap) {
        if (snap.connectionState != ConnectionState.done) {
          return const Center(child: CircularProgressIndicator());
        }
        if (snap.hasError) {
          return Center(child: Text('Error: ${snap.error}'));
        }
        final urls = snap.data!;
        if (urls.isEmpty) {
          return const Center(child: Text('No images found.'));
        }
        return MasonryGridView.count(
          crossAxisCount: 2,
          mainAxisSpacing: 4,
          crossAxisSpacing: 4,
          itemCount: urls.length,
          itemBuilder: (_, i) => ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: CachedNetworkImage(
              imageUrl: urls[i],
              placeholder: (_, __) => const SizedBox(height: 150, child: Center(child: CircularProgressIndicator())),
              errorWidget: (_, __, ___) => const Icon(Icons.error),
              fit: BoxFit.cover,
            ),
          ),
        );
      },
    );
  }
}

/// 3️⃣ Use it in your page
// class DressCodePage extends StatelessWidget {
//   const DressCodePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Dress Code'),
//         backgroundColor:
//             Theme.of(context).colorScheme.primary.withOpacity(0.4),
//         foregroundColor: Theme.of(context).colorScheme.surface,
//       ),
//       drawer: CustomDrawer(),
//       // let the grid scroll itself:
//       body: PinterestGrid(
//         query: 'wedding outfit',
//         accessToken: 'YOUR_PINTEREST_OAUTH_TOKEN',
//       ),
//     );
//   }
// }
