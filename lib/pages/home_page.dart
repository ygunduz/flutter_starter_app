import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import '../actions/actions.dart';
import '../models/models.dart';
import '../config/application.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Counter')),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            StoreConnector<AppState, String>(
                builder: (context, viewModel) {
                  return Text(viewModel, style: TextStyle(fontSize: 24));
                },
                converter: (store) => store.state.counter.toString()),
            StoreConnector<AppState, VoidCallback>(converter: (store) {
              return () => store.dispatch(CounterActionCreator.incrementCounter());
            }, builder: (context, callback) {
              return FlatButton(
                  child: Text('Increment'),
                  color: Colors.blue[100],
                  onPressed: callback);
            }),
            StoreConnector<AppState, VoidCallback>(converter: (store) {
              return () => store.dispatch(CounterActionCreator.decrementCounter());
            }, builder: (context, callback) {
              return FlatButton(
                  child: Text('Decrement'),
                  color: Colors.blue[100],
                  onPressed: callback);
            }),
            FlatButton(
              child: Text('Navigate To Second Page'),
              color: Colors.orangeAccent,
              onPressed: () {Application.router.navigateTo(context, '/second');}
            )
          ],
        )));
  }
}
