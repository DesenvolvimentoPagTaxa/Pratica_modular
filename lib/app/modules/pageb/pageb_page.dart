import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'pageb_controller.dart';

class PagebPage extends StatefulWidget {
  final String title;

  const PagebPage({Key key, this.title = "Pageb"}) : super(key: key);

  @override
  _PagebPageState createState() => _PagebPageState();
}

class _PagebPageState extends ModularState<PagebPage, PagebController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) {
        return Scaffold(
          appBar: AppBar(
            title: Text(widget.title),
          ),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Center(
                child: Text(controller.text),
              )
            ],
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () => controller.change(),
            child: Icon(Icons.refresh),
          ),
        );
      },
    );
  }
}
