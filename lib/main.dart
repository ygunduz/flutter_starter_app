import 'package:flutter/material.dart';
import 'package:redux/redux.dart';
import 'models/models.dart';
import 'reducers/reducers.dart';
import 'app.dart';

void main(){
  final store = new Store<AppState>(
    appReducer,
    initialState: AppState()
  );

  runApp(App(store));
}