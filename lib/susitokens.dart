library susitokens;
import 'dart:convert';

import 'package:flutter/services.dart';


class SusiTokens{
// Load JSON file from assets
Future _loadJsonFromAssets(String path) async {
  final jsonString = await rootBundle.loadString(path);
  final jsonList = json.decode(jsonString);
  return jsonList.cast<Map<String, dynamic>>();
}
List tokens = [];

// Example JSON loading
List? pcdefault;
List? pcext;

Future loadTokens() async {
  pcdefault = await _loadJsonFromAssets('packages/susitokens/assets/pancakeswap-default.json');
  pcext = await _loadJsonFromAssets('packages/susitokens/assets/pancakeswap-extended.json');
 pcdefault!.forEach((element) {tokens.add(element);});
 pcext!.forEach((element) {tokens.add(element);});
 return tokens;
}
}

