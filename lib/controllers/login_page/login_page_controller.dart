import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
// import model
import 'package:fast_shop/models/login_page/login_page_model.dart';

class LoginPageController {
  LoginPageController();
  
  void getter(BuildContext context) {
    LoginPageModel viewModel = Provider.of<LoginPageModel>(context, listen: false);
    //TODO Add code here for getter
    viewModel.getter();
  }

  void setter(BuildContext context) {
    LoginPageModel viewModel = Provider.of<LoginPageModel>(context, listen: false);
    //TODO Add code here for setter
    viewModel.setter();
  }

  void update(BuildContext context) {
    LoginPageModel viewModel = Provider.of<LoginPageModel>(context, listen: false);
    //TODO Add code here for update
    viewModel.update();
  }

  void remove(BuildContext context) {
    LoginPageModel viewModel = Provider.of<LoginPageModel>(context, listen: false);
    //TODO Add code here for remove
    viewModel.remove();
  }

  bool realizaLogin(String email, String senha) {
    String emailFake = 'teste@teste.com';
    String senhaFake = '123456';
    if(email==emailFake && senha == senhaFake){
      return true;
    }else{
      return false;
    }
  }
}