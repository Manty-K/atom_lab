import 'dart:convert';
import 'package:atom_lab/models/data.dart';

String atomicNumber(int index) {
  return jsonDecode(elementData)['Table']['Row'][index]['Cell'][0];
}

String symbol(int index) {
  return jsonDecode(elementData)['Table']['Row'][index]['Cell'][1];
}

String name(int index) {
  return jsonDecode(elementData)['Table']['Row'][index]['Cell'][2];
}

String atomicMass(int index) {
  return jsonDecode(elementData)['Table']['Row'][index]['Cell'][3];
}

String electronConfiguration(int index) {
  return jsonDecode(elementData)['Table']['Row'][index]['Cell'][5];
}

String electronegativity(int index) {
  return jsonDecode(elementData)['Table']['Row'][index]['Cell'][6];
}

String atomicRadius(int index) {
  return jsonDecode(elementData)['Table']['Row'][index]['Cell'][7];
}

String ionizationEnergy(int index) {
  return jsonDecode(elementData)['Table']['Row'][index]['Cell'][8];
}

String electronAffinity(int index) {
  return jsonDecode(elementData)['Table']['Row'][index]['Cell'][9];
}

String oxidationStates(int index) {
  return jsonDecode(elementData)['Table']['Row'][index]['Cell'][10];
}

String standardState(int index) {
  return jsonDecode(elementData)['Table']['Row'][index]['Cell'][11];
}

String meltingPoint(int index) {
  return jsonDecode(elementData)['Table']['Row'][index]['Cell'][12];
}

String boilingPoint(int index) {
  return jsonDecode(elementData)['Table']['Row'][index]['Cell'][13];
}

String density(int index) {
  return jsonDecode(elementData)['Table']['Row'][index]['Cell'][14];
}

String groupBlock(int index) {
  return jsonDecode(elementData)['Table']['Row'][index]['Cell'][15];
}

String yearDiscovered(int index) {
  return jsonDecode(elementData)['Table']['Row'][index]['Cell'][16];
}

/*
"AtomicNumber", 0
"Symbol",1
"Name",2
"AtomicMass",3
"CPKHexColor",4
"ElectronConfiguration",5
"Electronegativity",6
"AtomicRadius",7
"IonizationEnergy",8
"ElectronAffinity",9
"OxidationStates",10
"StandardState",11
"MeltingPoint",12
"BoilingPoint",13
"Density",14
"GroupBlock",15
"YearDiscovered"16
 */
