import 'package:flutter/material.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'config/routes.dart';
import 'config/application.dart';
import 'models/models.dart';

class App extends StatelessWidget {
  final Store<AppState> store;
  
  App(this.store){
    final router = new Router();
    Routes.configureRoutes(router);
    Application.router = router;
  }

  @override
  Widget build(BuildContext context){
    final app = StoreProvider<AppState>(
      store: store,
      child: MaterialApp(
        title: 'Counter',
        debugShowCheckedModeBanner: false,
        theme: new ThemeData(
          primarySwatch: Colors.blue,
        ),
        onGenerateRoute: Application.router.generator,
      )
    );
    
    return app;
  }
}