import 'package:fast_shop/views/login_page/login_page_view.dart';
import 'package:fast_shop/models/login_page/login_page_model.dart';
import 'package:fast_shop/controllers/login_page/login_page_controller.dart';
import 'package:flutter/material.dart';
import 'package:fast_shop/views/cadastro/cadastro_view.dart';
import 'package:fast_shop/views/pages/home_page.dart';



class LoginLayout extends StatefulWidget{
  final String title;
  LoginLayout({Key key, this.title}) : super(key: key);

  @override
  _LoginLayout createState() => _LoginLayout();
}

class _LoginLayout extends State<LoginLayout> {
      //Variaveis para o login FAKE
    LoginPageController loginPageController = LoginPageController();
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    TextStyle style = TextStyle(fontFamily: 'Montserrat', fontSize: 20.0, color: Color(0xff00171F),);


  @override
  void dispose() {
    // Clean up the controller when the widget is removed from the
    // widget tree.
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final _scaffoldKey = GlobalKey<ScaffoldState>();

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
          hintText: "Senha",
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(10.0))),
    );

    final loginButon = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(10.0),
      color: Color(0xff003459),
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: (){
          //FAKE LOGIN
          //TODO: Implementar login real com  SQL.
          if (loginPageController.realizaLogin(emailController.text,passwordController.text)){
            final snackBar = SnackBar(
                              content: 
                                Text('Login realizado com sucesso',
                                  style: TextStyle(
                                    fontWeight:FontWeight.bold,
                                    color: Colors.green),
                                  )


                                );
            _scaffoldKey.currentState.showSnackBar(snackBar);
          }else{
            final snackBar = SnackBar(
                              content: 
                                Text('Falha no Login',
                                  style: TextStyle(
                                    fontWeight:FontWeight.bold,
                                    color: Colors.red),
                                  )
                                  
                                );
            _scaffoldKey.currentState.showSnackBar(snackBar);
            Navigator.pushNamed(context, '/views/pages');
          }
        },
        child: Text("Login",
            textAlign: TextAlign.center,
            style: style.copyWith(
                color: Colors.white, fontWeight: FontWeight.bold)),
      ),
    );

    final cadastroButon = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(10.0),
      color: Color(0xff007EA7),
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: (){
          //FAKE LOGIN
          //TODO: Tela de cadastro.
          Navigator.push(
            context,
             MaterialPageRoute(builder: (context) => CadastroView()),
          );
        },
        child: Text("Novo Cadastro",
            textAlign: TextAlign.center,
            style: style.copyWith(
                color: Colors.white, fontWeight: FontWeight.bold)),
      ),
    );

    return Scaffold(
      key: _scaffoldKey,
      body: SingleChildScrollView(
            child: Center(
              child: Container(
                height: MediaQuery.of(context).size.height,
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(36.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(
                        height: 155.0,
                        child: Center(
                          child:Text('eMarket LOGO',
                            style:style,)
                        ),
                      ),
                      SizedBox(height: 45.0),
                      emailField,
                      SizedBox(height: 25.0),
                      passwordField,
                      SizedBox(
                        height: 35.0,
                      ),
                      loginButon,
                      SizedBox(
                        height: 10.0,
                      ),
                      cadastroButon,
                      SizedBox(
                        height: 15.0,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
    );
  }
}