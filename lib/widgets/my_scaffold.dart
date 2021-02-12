import 'package:events_services/constant/size_config.dart';
import 'package:flutter/material.dart';

class MyScaffold extends StatelessWidget {
  final appBar;
  final Widget body;

  const MyScaffold({Key key, this.appBar, this.body}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/background.jpg"),
                fit: BoxFit.cover)),
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          appBar: appBar,
          body: Center(
            child: Container(
                width: SizeConfig.widthMultiplier * 90,
                height: SizeConfig.heightMultiplier * 90,
                child: body),
          ),
        ));
  }
}
