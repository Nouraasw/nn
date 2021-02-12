import 'package:events_services/constant/size_config.dart';
import 'package:events_services/utils/push_new_screen.dart';
import 'package:events_services/widgets/my_scaffold.dart';
import 'package:events_services/widgets/raised_button.dart';
import 'package:events_services/widgets/title_widget.dart';
import 'package:flutter/material.dart';

import 'customers/user_authentication.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      body: Card(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: SizeConfig.heightMultiplier * 2,
              ),
              Image.asset("assets/images/main.jpg"),
              TitleWidget(title: "أهلاً بك في نظمها"),
              SizedBox(
                height: SizeConfig.heightMultiplier * 2,
              ),
              Container(
                  width: SizeConfig.widthMultiplier * 70,
                  child: RaisedButtonWidget(
                      title: "العملاء",
                      onPressed: () {
                        pushNewScreen(
                            context, UserAuthentication(title: "العملاء"));
                      })),
              SizedBox(
                height: SizeConfig.heightMultiplier * 2,
              ),
              TitleWidget(title: "أو"),
              SizedBox(
                height: SizeConfig.heightMultiplier * 2,
              ),
              Container(
                  width: SizeConfig.widthMultiplier * 70,
                  child: RaisedButtonWidget(
                      title: "مقدم الخدمة",
                      onPressed: () {
                        pushNewScreen(
                            context, UserAuthentication(title: "مقدم الخدمة"));
                      })),
              SizedBox(
                height: SizeConfig.heightMultiplier * 2,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
