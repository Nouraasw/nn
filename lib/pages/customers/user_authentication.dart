import 'package:events_services/constant/size_config.dart';
import 'package:events_services/pages/customers/user_login.dart';
import 'package:events_services/pages/customers/user_signup.dart';
import 'package:events_services/pages/service_provider/service_provider_signup.dart';
import 'package:events_services/utils/push_new_screen.dart';
import 'package:events_services/widgets/app_bar.dart';
import 'package:events_services/widgets/my_scaffold.dart';
import 'package:events_services/widgets/raised_button.dart';
import 'package:events_services/widgets/title_widget.dart';
import 'package:flutter/material.dart';

class UserAuthentication extends StatelessWidget {
  final title;

  const UserAuthentication({Key key, @required this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      body: Card(
        child: Scaffold(
          appBar: AppBarWidget(
            title: title,
          ),
          body: Container(
            width: SizeConfig.widthMultiplier * 100,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    width: SizeConfig.widthMultiplier * 70,
                    child: RaisedButtonWidget(
                        title: "تسجيل الدخول",
                        onPressed: () {
                          pushNewScreen(context, UserLogin());
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
                        title: "تسجيل جديد",
                        onPressed: () {
                          pushNewScreen(
                              context,
                              title == "العملاء"
                                  ? UserSignUp()
                                  : ServiceProviderSignUp());
                        })),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
