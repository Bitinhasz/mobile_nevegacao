import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
// import model
import 'package:fast_shop/models/cadastro/cadastro_model.dart';

class CadastroController {
  CadastroController();
  
  void getter(BuildContext context) {
    CadastroModel viewModel = Provider.of<CadastroModel>(context, listen: false);
    //TODO Add code here for getter
    viewModel.getter();
  }

  void setter(BuildContext context) {
    CadastroModel viewModel = Provider.of<CadastroModel>(context, listen: false);
    //TODO Add code here for setter
    viewModel.setter();
  }

  void update(BuildContext context) {
    CadastroModel viewModel = Provider.of<CadastroModel>(context, listen: false);
    //TODO Add code here for update
    viewModel.update();
  }

  void remove(BuildContext context) {
    CadastroModel viewModel = Provider.of<CadastroModel>(context, listen: false);
    //TODO Add code here for remove
    viewModel.remove();
  }
}