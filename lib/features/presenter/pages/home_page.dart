import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:my_app/features/presenter/widgets/appbar/app_bar.dart';
import 'package:my_app/features/presenter/widgets/form/form.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          appBar: AppBar(
            title: const Text('Ô Plano'),
            bottom: const TabBar(
              tabs: <Widget>[
                Tab(
                  icon: Icon(Icons.add),
                ),
                Tab(
                  icon: Icon(Icons.beach_access_sharp),
                ),
                Tab(
                  icon: Icon(Icons.brightness_5_sharp),
                ),
              ],
            ),
          ),
          body: const Center(
            child: TabBarView(children: <Widget>[
              FormLogin(),
              Icon(Icons.directions_transit, size: 350),
              Icon(Icons.directions_car, size: 350),
            ]),
          )),
    );
  }
}
