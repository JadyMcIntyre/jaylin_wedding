import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

/// 2. Local-asset version
///
/// • Add your images under, e.g., `assets/images/`
/// • In `pubspec.yaml`:
/// 
///   assets:
///     - assets/images/outfit1.jpg
///     - assets/images/outfit2.jpg
///     - assets/images/outfit3.jpg
///     - assets/images/outfit4.jpg
/// 
class StaticAssetGrid extends StatelessWidget {
  final List<String> assetPaths = [
    'assets/images/outfit1.jpg',
    'assets/images/outfit2.jpg',
    'assets/images/outfit3.jpg',
    'assets/images/outfit4.jpg',
    // …more assets
  ];

  @override
  Widget build(BuildContext context) {
    return MasonryGridView.count(
      crossAxisCount: 2,
      mainAxisSpacing: 4,
      crossAxisSpacing: 4,
      itemCount: assetPaths.length,
      itemBuilder: (_, i) => ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: Image.asset(
          assetPaths[i],
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
