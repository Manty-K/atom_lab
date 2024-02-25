import 'package:atom_lab/constants/app_colors.dart';
import 'package:atom_lab/constants/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:atom_lab/controllers/controller.dart';
import 'package:flutter/services.dart';
import 'components/atom_animation.dart';

class ElementInfo extends StatelessWidget {
  final int index;
  Color elementColor = kNonMetal;
  ElementInfo(this.index) {
    switch (groupBlock(index)) {
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
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return Scaffold(
      backgroundColor: kBlack,
      body: Stack(
        children: [
          Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
            colors: [
              elementColor.withOpacity(0.5),
              kBlack,
              kBlack,
              kBlack,
            ],
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
          ))),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              symbol(index),
                              style: kSymbolStyle,
                            ),
                            Text(
                              atomicNumber(index),
                              style: kAtomicNumberStyle,
                            ),
                          ],
                        ),
                        Text(
                          name(index),
                          style: kNameStyle(elementColor),
                        )
                      ],
                    ),
                    Text(
                      groupBlock(index),
                      style: kAtomicNumberStyle,
                    )
                  ],
                ),
                Spacer(),
                AtomAnimation(index),
                Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Text(
                          'ATOMIC MASS',
                          style: kPropertyStyle,
                        ),
                        Text(
                          atomicMass(index) == ''
                              ? '--'
                              : atomicMass(index) + ' u',
                          style: kNameStyle(elementColor),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          'ATOMIC RADIUS',
                          style: kPropertyStyle,
                        ),
                        Text(
                          atomicRadius(index) == ''
                              ? '--'
                              : atomicRadius(index) + ' pm',
                          style: kNameStyle(elementColor),
                        ),
                      ],
                    ),
                  ],
                ),
                Spacer(),
                Column(
                  children: [
                    Text(
                      'ELECTRON CONFIGURATION',
                      style: kPropertyStyle,
                    ),
                    Text(
                      electronConfiguration(index) == ''
                          ? '--'
                          : electronConfiguration(index),
                      style: kNameStyle(elementColor),
                    ),
                  ],
                ),
                Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Text(
                          'OXIDATION STATE',
                          style: kPropertyStyle,
                        ),
                        Text(
                          oxidationStates(index) == ''
                              ? '--'
                              : oxidationStates(index),
                          style: kNameStyle(elementColor),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          'ELECTRONEGATIVITY',
                          style: kPropertyStyle,
                        ),
                        Text(
                          electronegativity(index) == ''
                              ? '--'
                              : electronegativity(index),
                          style: kNameStyle(elementColor),
                        ),
                      ],
                    ),
                  ],
                ),
                Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Text(
                          'IONIZATION ENERGY',
                          style: kPropertyStyle,
                        ),
                        Text(
                          ionizationEnergy(index) == ''
                              ? '--'
                              : ionizationEnergy(index) + ' ev',
                          style: kNameStyle(elementColor),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          'ELECTRON AFFINITY',
                          style: kPropertyStyle,
                        ),
                        Text(
                          electronAffinity(index) == ''
                              ? '--'
                              : electronAffinity(index) + ' ev',
                          style: kNameStyle(elementColor),
                        ),
                      ],
                    ),
                  ],
                ),
                Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Text(
                          'MELTING POINT',
                          style: kPropertyStyle,
                        ),
                        Text(
                          meltingPoint(index) == ''
                              ? '--'
                              : meltingPoint(index) + ' K',
                          style: kNameStyle(elementColor),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          'BOILING POINT',
                          style: kPropertyStyle,
                        ),
                        Text(
                          boilingPoint(index) == ''
                              ? '--'
                              : boilingPoint(index) + ' K',
                          style: kNameStyle(elementColor),
                        ),
                      ],
                    ),
                  ],
                ),
                Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Text(
                          'DENSITY',
                          style: kPropertyStyle,
                        ),
                        Text(
                          density(index) == ''
                              ? '--'
                              : density(index) + ' g/cm²',
                          style: kNameStyle(elementColor),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          'STANDARD STATE',
                          style: kPropertyStyle,
                        ),
                        Text(
                          standardState(index) == ''
                              ? '--'
                              : standardState(index),
                          style: kNameStyle(elementColor),
                        ),
                      ],
                    ),
                  ],
                ),
                Spacer(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
