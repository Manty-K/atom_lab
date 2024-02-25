import 'package:atom_lab/constants/app_colors.dart';
import 'package:atom_lab/constants/links.dart';
import 'package:atom_lab/constants/sizes.dart';
import 'package:atom_lab/screens/periodic_table_screen/components/element_tile.dart';
import 'package:atom_lab/screens/periodic_table_screen/components/empty_tile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:single_child_two_dimensional_scroll_view/single_child_two_dimensional_scroll_view.dart';
import 'package:url_launcher/url_launcher_string.dart';

class PeriodicTable extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<PeriodicTable> {
  final GlobalKey<ScaffoldState> _key = GlobalKey(); // Create a key

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'AtomLab',
      themeMode: ThemeMode.dark,
      theme: ThemeData(
        scaffoldBackgroundColor: kBlack,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: new Scaffold(
        key: _key,
        drawer: Drawer(
          backgroundColor: kBlack,
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              OutlinedButton(
                style: OutlinedButton.styleFrom(
                  foregroundColor: Colors.white,
                ),
                onPressed: () {
                  launchUrlString(policyLink);
                },
                child: Text('Privacy Policy'),
              )
            ],
          ),
        ),
        appBar: AppBar(
          backgroundColor: kBlack,
          leading: IconButton(
            onPressed: () {
              _key.currentState!.openDrawer();
            },
            icon: Icon(
              Icons.menu_rounded,
              color: Colors.white,
            ),
          ),
          title: Text(
            'AtomLab',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: SafeArea(
          child: SingleChildTwoDimensionalScrollView(
            child: buildPeriodicTable(),
          ),
        ),
      ),
    );
  }

  Widget buildPeriodicTable() {
    List<ElementTile> group1 = [
      ElementTile(1),
      ElementTile(3),
      ElementTile(11),
      ElementTile(19),
      ElementTile(37),
      ElementTile(55),
      ElementTile(87),
    ];
    List<ElementTile> group2 = [
      ElementTile(0),
      ElementTile(4),
      ElementTile(12),
      ElementTile(20),
      ElementTile(38),
      ElementTile(56),
      ElementTile(88),
    ];
    List<Widget> group3 = [
      ElementTile(0),
      ElementTile(0),
      ElementTile(0),
      ElementTile(21),
      ElementTile(39),
      EmptyTile('Lanthanide', kLanthanide),
      EmptyTile('Actinide', kActinide),
    ];
    List<ElementTile> group4 = [
      ElementTile(0),
      ElementTile(0),
      ElementTile(0),
      ElementTile(22),
      ElementTile(40),
      ElementTile(72),
      ElementTile(104),
    ];
    List<ElementTile> group5 = [
      ElementTile(0),
      ElementTile(0),
      ElementTile(0),
      ElementTile(23),
      ElementTile(41),
      ElementTile(73),
      ElementTile(105),
    ];
    List<ElementTile> group6 = [
      ElementTile(0),
      ElementTile(0),
      ElementTile(0),
      ElementTile(24),
      ElementTile(42),
      ElementTile(74),
      ElementTile(106),
    ];
    List<ElementTile> group7 = [
      ElementTile(0),
      ElementTile(0),
      ElementTile(0),
      ElementTile(25),
      ElementTile(43),
      ElementTile(75),
      ElementTile(107),
    ];
    List<ElementTile> group8 = [
      ElementTile(0),
      ElementTile(0),
      ElementTile(0),
      ElementTile(26),
      ElementTile(44),
      ElementTile(76),
      ElementTile(108),
    ];
    List<ElementTile> group9 = [
      ElementTile(0),
      ElementTile(0),
      ElementTile(0),
      ElementTile(27),
      ElementTile(45),
      ElementTile(77),
      ElementTile(109),
    ];
    List<ElementTile> group10 = [
      ElementTile(0),
      ElementTile(0),
      ElementTile(0),
      ElementTile(28),
      ElementTile(46),
      ElementTile(78),
      ElementTile(110),
    ];
    List<ElementTile> group11 = [
      ElementTile(0),
      ElementTile(0),
      ElementTile(0),
      ElementTile(29),
      ElementTile(47),
      ElementTile(79),
      ElementTile(111),
    ];
    List<ElementTile> group12 = [
      ElementTile(0),
      ElementTile(0),
      ElementTile(0),
      ElementTile(30),
      ElementTile(48),
      ElementTile(80),
      ElementTile(112),
    ];
    List<ElementTile> group13 = [
      ElementTile(0),
      ElementTile(5),
      ElementTile(13),
      ElementTile(31),
      ElementTile(49),
      ElementTile(81),
      ElementTile(113),
    ];
    List<ElementTile> group14 = [
      ElementTile(0),
      ElementTile(6),
      ElementTile(14),
      ElementTile(32),
      ElementTile(50),
      ElementTile(82),
      ElementTile(114),
    ];
    List<ElementTile> group15 = [
      ElementTile(0),
      ElementTile(7),
      ElementTile(15),
      ElementTile(33),
      ElementTile(51),
      ElementTile(83),
      ElementTile(115),
    ];
    List<ElementTile> group16 = [
      ElementTile(0),
      ElementTile(8),
      ElementTile(16),
      ElementTile(34),
      ElementTile(52),
      ElementTile(84),
      ElementTile(116),
    ];
    List<ElementTile> group17 = [
      ElementTile(0),
      ElementTile(9),
      ElementTile(17),
      ElementTile(35),
      ElementTile(53),
      ElementTile(85),
      ElementTile(117),
    ];
    List<ElementTile> group18 = [
      ElementTile(2),
      ElementTile(10),
      ElementTile(18),
      ElementTile(36),
      ElementTile(54),
      ElementTile(86),
      ElementTile(118),
    ];

    List<Widget> lanthanide = [
      SizedBox(
        width: (4 * kDefaultPadding +
            2 * kElementTileWidth +
            (kElementTileWidth / 2)),
      ),
      ElementTile(57),
      ElementTile(58),
      ElementTile(59),
      ElementTile(60),
      ElementTile(61),
      ElementTile(62),
      ElementTile(63),
      ElementTile(64),
      ElementTile(65),
      ElementTile(66),
      ElementTile(67),
      ElementTile(68),
      ElementTile(69),
      ElementTile(70),
      ElementTile(71),
    ];
    List<Widget> actinide = [
      SizedBox(
        width: (4 * kDefaultPadding +
            2 * kElementTileWidth +
            (kElementTileWidth / 2)),
      ),
      ElementTile(89),
      ElementTile(90),
      ElementTile(91),
      ElementTile(92),
      ElementTile(93),
      ElementTile(94),
      ElementTile(95),
      ElementTile(96),
      ElementTile(97),
      ElementTile(98),
      ElementTile(99),
      ElementTile(100),
      ElementTile(101),
      ElementTile(102),
      ElementTile(103),
    ];

    return Column(
      children: [
        Row(
          children: [
            Column(
              children: group1.map((e) => e).toList(),
            ),
            Column(
              children: group2.map((e) => e).toList(),
            ),
            Column(
              children: group3.map((e) => e).toList(),
            ),
            Column(
              children: group4.map((e) => e).toList(),
            ),
            Column(
              children: group5.map((e) => e).toList(),
            ),
            Column(
              children: group6.map((e) => e).toList(),
            ),
            Column(
              children: group7.map((e) => e).toList(),
            ),
            Column(
              children: group8.map((e) => e).toList(),
            ),
            Column(
              children: group9.map((e) => e).toList(),
            ),
            Column(
              children: group10.map((e) => e).toList(),
            ),
            Column(
              children: group11.map((e) => e).toList(),
            ),
            Column(
              children: group12.map((e) => e).toList(),
            ),
            Column(
              children: group13.map((e) => e).toList(),
            ),
            Column(
              children: group14.map((e) => e).toList(),
            ),
            Column(
              children: group15.map((e) => e).toList(),
            ),
            Column(
              children: group16.map((e) => e).toList(),
            ),
            Column(
              children: group17.map((e) => e).toList(),
            ),
            Column(
              children: group18.map((e) => e).toList(),
            ),
          ],
        ),
        SizedBox(height: kDefaultPadding * 2),
        Row(
          children: lanthanide.map((e) => e).toList(),
        ),
        Row(
          children: actinide.map((e) => e).toList(),
        ),
      ],
    );
  }
}
