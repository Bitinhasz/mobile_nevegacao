import 'package:flutter/material.dart';

class CadastroLayout extends StatefulWidget {
  CadastroLayout({Key key}) : super(key: key);

  @override
  _cadastroLayout createState() => _cadastroLayout();
}

class _cadastroLayout extends State<CadastroLayout> {

    TextEditingController nomeController = TextEditingController();
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    TextEditingController passwordConfirmController = TextEditingController();
    TextStyle style = TextStyle(fontFamily: 'Montserrat', fontSize: 20.0, color: Color(0xff00171F),);

  @override
  void dispose() {
    // Clean up the controller when the widget is removed from the
    // widget tree.
    nomeController.dispose();
    emailController.dispose();
    passwordController.dispose();
    passwordConfirmController.dispose();
    super.dispose();
  }

  //LAYOUT
  @override
  Widget build(BuildContext context) {

    final nomeField = TextField(
      controller: nomeController,
      obscureText: false,
      style: style,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "Nome Completo",
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(10.0))),
    );

    final emailField = TextField(
      controller: emailController,
      obscureText: false,
      style: style,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "E-mail",
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(10.0))),
    );

    final passwordField = TextField(
      controller: passwordController,
      obscureText: true,
      style: style,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "Informe a Senha",
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(10.0))),
    );

    final passwordConfirmField = TextField(
      controller: passwordController,
      obscureText: true,
      style: style,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "Confirme a Senha",
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(10.0))),
    );

    final confirmaButon = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(10.0),
      color: Color(0xff86C96B),
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width / 3,
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: (){
          Navigator.pop(context);
        },
        child: Text("Confirmar",
            textAlign: TextAlign.center,
            style: style.copyWith(
                color: Colors.white, fontWeight: FontWeight.bold)),
      ),
    );

    final voltarButon = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(10.0),
      color: Colors.redAccent,
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width / 3,
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: (){
          Navigator.pop(context);
        },
        child: Text("Voltar",
            textAlign: TextAlign.center,
            style: style.copyWith(
                color: Colors.white, fontWeight: FontWeight.bold)),
      ),
    );

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height:MediaQuery.of(context).size.height,
          color: Colors.white,
          child: Padding(
            padding: EdgeInsets.all(36.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(height: 80.0),
                Text('eMarket Logo aqui ou não, sei lá...'),
                SizedBox(height: 80.0),
                nomeField,
                SizedBox(height: 30.0),
                emailField,
                SizedBox(height: 30.0),
                passwordField,
                SizedBox(height: 30.0),
                passwordConfirmField,
                SizedBox(height: 30.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:[
                    voltarButon,
                    SizedBox(width: 20.0),
                    confirmaButon,                   
                  ]
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}