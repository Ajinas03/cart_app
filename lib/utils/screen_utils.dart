import 'package:flutter/material.dart';

Size getSize(context) {
  return MediaQuery.of(context).size;
}

pushScreen(context, widget) {
  Navigator.push(context, MaterialPageRoute(builder: (context) => widget));
}
