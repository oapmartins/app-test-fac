import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projeto_fac/pages/register_page.dart';

import 'info_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {

    final tabs = [
      Container(child: _body(context)),
      Center(child: RegisterPage()),
      Center(child: InfoPage())
    ];

    return Scaffold(
      body: tabs[_selectedIndex],
      bottomNavigationBar: _bottomNavigator(context),
    );
  }

  _body(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Container(
      color: Colors.green,
      width: size.width,
      height: size.height,
      child: LayoutBuilder(
        builder: (_, constraints) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: constraints.maxHeight * .2,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: size.width * .5,
                      padding: EdgeInsets.all(10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'FAC SISTEMAS',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          Text('DWEB', style: TextStyle(color: Colors.white)),
                        ],
                      ),
                    ),
                    Container(
                      width: size.width * .5,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'MODULOS',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                // width: MediaQuery.of(context).size.width,
                height: constraints.maxHeight * .8,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.only(top: 10, right: 5, left: 5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            _cardIcones(
                                Icons.attach_money, 'Folha Pagamento', context),
                            _cardIcones(Icons.construction, 'Obras', context),
                            _cardIcones(
                                Icons.account_balance, 'Patrimônio', context),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 0, right: 5, left: 5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            _cardIcones(
                                Icons.volunteer_activism, 'Concessão', context),
                            _cardIcones(Icons.hail, 'Licitação', context),
                            _cardIcones(
                                Icons.accessible_forward, 'Frotas', context),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 0, right: 5, left: 5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            _cardIcones(
                                Icons.attach_money, 'Folha Pagamento', context),
                            _cardIcones(Icons.construction, 'Obras', context),
                            _cardIcones(
                                Icons.account_balance, 'Patrimônio', context),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }

  _bottomNavigator(BuildContext context) {
    return Container(
      child: BottomNavigationBar(
          backgroundColor: Colors.grey[150],
          currentIndex: _selectedIndex,
          iconSize: 25,
          selectedFontSize: 12,
          unselectedFontSize: 12,
          selectedItemColor: Colors.green,
          unselectedItemColor: Colors.grey,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Início'),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_add_alt_1), label: 'Cadastro'),
            BottomNavigationBarItem(
                icon: Icon(Icons.info), label: 'Informações'),
          ],
          onTap: (index) {
            setState(() {
              _selectedIndex = index;
            });
          }),
    );
  }

  _cardIcones(IconData icone, String text, BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => SecondRoute()));
      },
      child: Container(
        width: MediaQuery.of(context).size.width / 3.2,
        height: 100,
        child: Card(
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                    color: Colors.green[50],
                    borderRadius: BorderRadius.circular(50)),
                child: Icon(
                  icone,
                  color: Colors.green,
                ),
              ),
              Text(
                text,
                overflow: TextOverflow.visible,
                style: TextStyle(
                  fontSize: 11,
                ),
                textAlign: TextAlign.justify,
              )
            ],
          ),
        ),
      ),
    );
  }
}

class SecondRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Route"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Go back!'),
        ),
      ),
    );
  }
}
