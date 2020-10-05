import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'home_controller.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) {
        return Scaffold(
          appBar: AppBar(title: Text('Home')),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Center(child: Text(controller.value.toString())),
              Center(
                child: RaisedButton(
                  child: Text('Ir para Page A'),
                  onPressed: () => Modular.to.pushNamed('/pagea'),
                ),
              ),
              Center(
                child: RaisedButton(
                  child: Text('Ir para Page B'),
                  onPressed: () => Modular.to.pushNamed('/pageb', arguments: controller.value),
                ),
              )
            ],
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () => controller.increment(),
            child: Icon(Icons.add),
          ),
        );
      },
    );
  }
}
