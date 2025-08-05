import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:http/http.dart' as http; // or Dio

// class PinterestGrid extends StatelessWidget {
//   final List<String> imageUrls; // fetched from Pinterest API

//   @override
//   Widget build(BuildContext context) {
//     return MasonryGridView.count(
//       crossAxisCount: 2,
//       mainAxisSpacing: 4,
//       crossAxisSpacing: 4,
//       itemCount: imageUrls.length,
//       itemBuilder: (context, index) {
//         return ClipRRect(
//           borderRadius: BorderRadius.circular(8),
//           child: CachedNetworkImage(
//             imageUrl: imageUrls[index],
//             placeholder: (_, __) => const SizedBox(
//               height: 150,
//               child: Center(child: CircularProgressIndicator())),
//             errorWidget: (_, __, ___) => const Icon(Icons.error),
//             fit: BoxFit.cover,
//           ),
//         );
//       },
//     );
//   }
// }
