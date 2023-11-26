import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

//change_notifier_provider
class NavigationHelper{
  //Navigate Push
  Future<dynamic> navigatePush<T extends ChangeNotifier>({
    required BuildContext context,
    required T viewModel,
    required Widget screen,
  }) {
    return Navigator.of(context).push(
      MaterialPageRoute(
        builder: (_) => ListenableProvider.value(
          value: viewModel,
          child: screen,
        ),
      ),
    );
  }

  Future<dynamic> normalNavigatePush<T extends ChangeNotifier>({
    required BuildContext context,
    required Widget screen,
  }) {
    return Navigator.of(context).push(
      MaterialPageRoute(
        builder: (_) => screen,
      ),
    );
  }

  Future<dynamic> normalNavigatePushReplacement<T extends ChangeNotifier>({
    required BuildContext context,
    required Widget screen,
  }) {
    return Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (_) => screen,
      ),
    );
  }

  //Navigate PushReplacement
  void navigatePushReplacement<T extends ChangeNotifier>({
    required BuildContext context,
    required T viewModel,
    required Widget screen,
  }) {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (_) => ListenableProvider.value(
          value: viewModel,
          child: screen,
        ),
      ),
    );
  }

  void navigatePushReplacementUntil<T extends ChangeNotifier>({
    required BuildContext context,
    required T viewModel,
    required Widget screen,
  }) {
    Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(
      builder: (_) => ListenableProvider.value(
        value: viewModel,
        child: screen,
      ),
    ), (route) => route.isFirst);
  }

  void navigatePushAndRemoveUntil<T extends ChangeNotifier>({
    required BuildContext context,
    required T viewModel,
    required Widget screen,
  }) {
    Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(
      builder: (_) => ListenableProvider.value(
        value: viewModel,
        child: screen,
      ),
    ), (route) => false);
  }
  void navigateNormalPushAndRemoveUntil<T extends ChangeNotifier>({
    required BuildContext context,
    required Widget screen,
    bool removeUntil = false
  }) {
    Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(
      builder: (_) => screen,
    ), (route) => removeUntil);

  }

  void navigateLogout<T extends ChangeNotifier>({
    required BuildContext context,
    required T viewModel,
    required Widget screen,
  }) {
    Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(
      builder: (_) => ListenableProvider.value(
        value: viewModel,
        child: screen,
      ),
    ), (route) => false);
  }

  void normalNavigatePushReplacementUntil<T extends ChangeNotifier>({
    required BuildContext context,
    required Widget screen,
  }) {
    Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(
      builder: (_) => screen,
    ), (route) => route.isFirst);
  }

}