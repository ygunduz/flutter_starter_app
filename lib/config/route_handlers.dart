import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import '../pages/pages.dart';

var rootHandler = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      return HomePage();
    }
);

var secondRouteHandler = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      return SecondPage();
    }
);