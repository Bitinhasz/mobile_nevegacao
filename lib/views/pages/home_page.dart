import 'package:flutter/material.dart';
import 'package:fast_shop/views/fragments/fragmento1.dart';
import 'package:fast_shop/views/fragments/fragmento2.dart';
import 'package:fast_shop/views/fragments/fragmento3.dart';

class MenuItem {
  String titulo;
  IconData icon;
  MenuItem(this.titulo, this.icon);
}

class HomePage extends StatefulWidget {

  final menuItens = [
    new MenuItem("Inicio", Icons.home),
    new MenuItem("Produtos", Icons.add_shopping_cart),
    new MenuItem("Lojas", Icons.business)
  ];

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return HomePageState();
  }
}


class HomePageState extends State<HomePage> {

  _itemSelecionado(int item) {
    setState(() {
      _selecionado = item;
    });
    Navigator.of(context).pop();
  }

  _menuItem() {
    List<Widget> menu = <Widget>[];
    for(var i = 0; i < widget.menuItens.length; i++) {
      var item = widget.menuItens[i];
      menu.add(new ListTile(
        leading: new Icon(item.icon),
        title: new Text(item.titulo),
        selected: i == _selecionado,
        onTap: () => _itemSelecionado(i),
      ));
    }
    return menu;
  }

  int _selecionado = 0;
  _carregaFragmento(int carrega) {
    switch(carrega) {
      case 0: return new fragmentoOne();
      case 1: return new fragmentoTwo();
      case 2: return new fragmentoTree();
      default: return new Text('Essa página não existe');
    }
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("HOME"),
      ),
      drawer: new Drawer(
        child: new Column(
          children: <Widget>[
            new UserAccountsDrawerHeader(
                accountName: new Text("Victor Enrique"),
                currentAccountPicture: new CircleAvatar(
                  backgroundImage: new NetworkImage("https://scontent.fmao1-1.fna.fbcdn.net/v/t1.0-9/10313813_579340328831824_730972295112459007_n.jpg?_nc_cat=106&_nc_sid=85a577&_nc_ohc=4rso8Npe8ZcAX9b31Je&_nc_ht=scontent.fmao1-1.fna&oh=36041e8f6d8147be98bb1651c98e5ec0&oe=5E8E7B81"),
                ),
                decoration: new BoxDecoration(
                  image: new DecorationImage(
                    colorFilter: ColorFilter.mode(Colors.black87,
                        BlendMode.multiply),
                    fit: BoxFit.fill,
                    image: new NetworkImage("https://scontent.fmao1-1.fna.fbcdn.net/v/t1.0-9/12928279_920024231430097_9078013149314402224_n.jpg?_nc_cat=110&_nc_sid=dd9801&_nc_ohc=itNwyqWAeqQAX88plyY&_nc_ht=scontent.fmao1-1.fna&oh=91d599de93b18f8824e5e3f92e308555&oe=5E800884")
                  )
                ),
                accountEmail: new Text("victorenrique@topprimeseguros.com.br")),
                new Column(
                  children: _menuItem(),
                )
          ],
        ),
      ),
      body: _carregaFragmento(_selecionado),
    );
  }
}