import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// import model
import 'package:fast_shop/models/login_page/login_page_model.dart';
// import controller
import 'package:fast_shop/controllers/login_page/login_page_controller.dart';
// import layout
import 'package:fast_shop/views/login_page/layouts/login_layout.dart';

class LoginPageView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    LoginPageController viewController = LoginPageController();
    return ChangeNotifierProvider<LoginPageModel>(
      create: (context) => LoginPageModel.instance(),
      child: Consumer<LoginPageModel>(
        builder: (context, viewModel, child) {
          return LoginLayout();
        },
      ),
    );
  }
}