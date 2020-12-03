import 'package:atom_lab/constants/sizes.dart';
import 'package:flutter/material.dart';

class EmptyTile extends StatelessWidget {
  final String string;
  final Color color;

  EmptyTile(this.string, this.color);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(kDefaultPadding),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(kTileCornerRadius),
            gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [color, color.withOpacity(0.1)])),
        alignment: Alignment.center,
        height: kElementTileHeight,
        width: kElementTileWidth,
        child: Text(
          string,
          style: TextStyle(fontSize: 15, color: Colors.white),
        ),
      ),
    );
  }
}
