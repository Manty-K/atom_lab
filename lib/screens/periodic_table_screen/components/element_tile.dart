import 'package:atom_lab/constants/sizes.dart';
import 'package:atom_lab/screens/element_info_screen/element_info.dart';
import 'package:flutter/material.dart';
import 'package:atom_lab/controllers/controller.dart';
import 'package:atom_lab/constants/app_colors.dart';

class ElementTile extends StatelessWidget {
  final int index;
  Color elementColor = kNonMetal;
  int actualIndex = 0;

  ElementTile(this.index) {
    if (index != 0) {
      switch (groupBlock(index - 1)) {
        case "Nonmetal":
          elementColor = kNonMetal;
          break;
        case "Noble gas":
          elementColor = kNobleGas;
          break;
        case "Alkali metal":
          elementColor = kAlkaliMetal;
          break;
        case "Alkaline earth metal":
          elementColor = kAlkalineEarth;
          break;
        case "Metalloid":
          elementColor = kMetalloid;
          break;
        case "Halogen":
          elementColor = kHalogen;
          break;
        case "Post-transition metal":
          elementColor = kBasicMetal;
          break;
        case "Transition metal":
          elementColor = kTransitionMetal;
          break;
        case "Lanthanide":
          elementColor = kLanthanide;
          break;
        case "Actinide":
          elementColor = kActinide;
          break;
        default:
          elementColor = Colors.white;
          break;
      }
      actualIndex = index - 1;
    } else {
      elementColor = Colors.transparent;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(kDefaultPadding),
      child: GestureDetector(
        onTap: () {
          if (index > 0) {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => ElementInfo(index - 1)));
          }
        },
        child: Container(
          height: kElementTileHeight,
          width: kElementTileWidth,
          //color: elementColor,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(kTileCornerRadius),
              gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [elementColor, elementColor.withOpacity(0.1)])),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                index != 0 ? atomicNumber(index - 1) : '',
                style: TextStyle(fontSize: 15, color: Colors.white),
              ),
              Text(
                index != 0 ? symbol(index - 1) : '',
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              Text(index != 0 ? name(index - 1) : '',
                  style: TextStyle(fontSize: 12, color: Colors.white)),
              Text(index != 0 ? atomicMass(index - 1) : '',
                  style: TextStyle(fontSize: 8, color: Colors.white)),
            ],
          ),
        ),
      ),
    );
  }
}
