import 'package:flutter/material.dart';
import 'package:template/router.dart';
import 'package:template/services/locator.dart';
import 'package:template/services/storage/local_storage.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  /// initialize [GetIt]
  setupLocator();

  /// initializer [LocalStorage]
  initLocalStorage();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
      onGenerateRoute: Router.generateRoute,
      initialRoute: '/',
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;

  MyHomePage({this.title});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

Future initLocalStorage() async {
  await App.init();
}
