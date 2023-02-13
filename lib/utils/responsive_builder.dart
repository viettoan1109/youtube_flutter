import 'package:flutter/cupertino.dart';

class ResponsiveBuilder extends StatelessWidget {
  const ResponsiveBuilder({
    required this.mobileBuilder,
    required this.tabletBuilder,
    required this.desktopBuilder,
    Key? key,
  }) : super(key: key);

  final Widget Function(
      BuildContext context,
      BoxConstraints constraint,
      ) mobileBuilder;

  final Widget Function(
      BuildContext context,
      BoxConstraints constraint,
      ) tabletBuilder;

  final Widget Function(
      BuildContext context,
      BoxConstraints constraint,
      ) desktopBuilder;

  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < 650;

  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width < 1250 &&
          MediaQuery.of(context).size.width >= 650;

  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 1250;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth >= 1250) {
        return desktopBuilder(context, constraints);
      } else if (constraints.maxWidth >= 650) {
        return tabletBuilder(context, constraints);
      } else {
        return mobileBuilder(context, constraints);
      }
    });
  }
}
