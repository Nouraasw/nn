import 'package:events_services/pages/welcome_page.dart';
import 'package:events_services/theme/colors/my_colors.dart';
import 'package:events_services/theme/styling.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'constant/size_config.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return OrientationBuilder(builder: (context, orientation) {
        SizeConfig().init(constraints, orientation);
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          locale: Locale('ar', ''),
          localizationsDelegates: [
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: [
            const Locale('ar', ''), // Arabic
          ],
          theme: ThemeData(
            scaffoldBackgroundColor: Colors.transparent,
            textTheme: AppTheme.lightTextTheme,
            visualDensity: VisualDensity.adaptivePlatformDensity,
            accentColor: MyColors.white,
            primaryColor: MyColors.primary,
            appBarTheme:
                AppBarTheme(iconTheme: IconThemeData(color: MyColors.primary)),
            fontFamily: "Jannat",
            cardTheme: CardTheme(
                color: MyColors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                elevation: 1),
            buttonTheme: ButtonThemeData(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              buttonColor: MyColors.primary,
              splashColor: MyColors.white,
            ),
          ),
          home: WelcomePage(),
        );
      });
    });
  }
}
