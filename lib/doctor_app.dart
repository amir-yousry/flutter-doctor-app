import 'package:doctor_app/core/routing/app_router.dart';
import 'package:doctor_app/core/routing/routes.dart';
import 'package:doctor_app/core/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorApp extends StatelessWidget {
  final AppRouter appRouter;
  const DoctorApp({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Doctor App',
        theme: ThemeData(
          primaryColor: ColorsManager.mainBlue,
          scaffoldBackgroundColor: Colors.white,
          textSelectionTheme: TextSelectionThemeData(
            cursorColor: ColorsManager.mainBlue,
              selectionColor: ColorsManager.mainBlue.withAlpha(75),
            selectionHandleColor: ColorsManager.mainBlue,
          ),
          /*inputDecorationTheme: InputDecorationTheme(
            filled: true,
            fillColor: ColorsManager.moreLighterGray,
            contentPadding: EdgeInsets.symmetric(
              horizontal: 20.w,
              vertical: 18.h,
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: BorderSide(
                color: ColorsManager.lighterGray,
                width: 1.3,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: BorderSide(color: ColorsManager.mainBlue, width: 1.3),
            ),
            suffixIconColor: WidgetStateColor.resolveWith((states) {
              return states.contains(WidgetState.focused)
                  ? ColorsManager.mainBlue
                  : Colors.grey;
            }),
          ),*/
        ),
        initialRoute: Routes.onboarding,
        onGenerateRoute: appRouter.getRoute,
      ),
    );
  }
}
