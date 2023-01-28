import 'package:flutter/material.dart';
import 'package:host_group_chat/core/constants.dart';
import 'package:host_group_chat/features/auth/presentation/pages/forgot_password_page.dart';
import 'package:host_group_chat/features/auth/presentation/pages/login_page.dart';
import 'package:host_group_chat/features/chat/presentation/pages/single_chat_page.dart';
import 'package:host_group_chat/features/groups/presentation/pages/create_new_group_page.dart';

import '../core/presentation/pages/error_page.dart';
import '../features/auth/presentation/pages/register_page.dart';

class OnGenerateRoute {
  static Route<dynamic> route(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case PageConst.singleChatRouteName:
        return materialBuilder(widget: const SingleChatPage());
      case PageConst.createNewGroupRouteName:
        return materialBuilder(widget: const CreateNewGroupPage());
      case PageConst.forgotPageRouteName:
        return materialBuilder(widget: const ForgotPasswordPage());
      case PageConst.loginPageRouteName:
        return materialBuilder(widget: const LoginPage());
      case PageConst.registerPageRouteName:
        return materialBuilder(widget: const RegisterPage());
      case "/":
        return materialBuilder(widget: const LoginPage());
      default:
        return materialBuilder(widget: const ErrorPage());
    }
  }
}

MaterialPageRoute materialBuilder({required Widget widget}) {
  return MaterialPageRoute(builder: (_) => widget);
}
