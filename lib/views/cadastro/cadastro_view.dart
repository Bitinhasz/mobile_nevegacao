import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
// import model
import 'package:fast_shop/models/cadastro/cadastro_model.dart';
// import controller
import 'package:fast_shop/controllers/cadastro/cadastro_controller.dart';
//import Layout
import 'package:fast_shop/views/cadastro/layouts/cadastro_layout.dart';

class CadastroView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    CadastroController viewController = CadastroController();
    return ChangeNotifierProvider<CadastroModel>(
      create: (context) => CadastroModel.instance(),
      child: Consumer<CadastroModel>(
        builder: (context, viewModel, child) {
          return CadastroLayout();
        },
      ),
    );
  }
}