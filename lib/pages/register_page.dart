import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: _body(context));
  }
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
                    child: Row(
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Cadastro de Servidor',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: 20)
                            ),
                          ],
                        ),
                        SizedBox(width: 5),
                        Icon(Icons.person_add_alt_1, color: Colors.white),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              // width: MediaQuery.of(context).size.width,
              height: constraints.maxHeight * .8,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                height: MediaQuery.of(context).size.height - 50,
                width: double.infinity,
                child: SingleChildScrollView(
                  child: Container(
                    child: Column(
                      children: <Widget>[
                        SizedBox(height: 30),
                        Column(
                          children: <Widget>[
                            inputFile(label: 'Nome'),
                            inputFile(label: 'Email'),
                            inputFile(label: 'Confirmar Email'),
                            inputFile(label: 'Senha', obscureText: true),
                            SizedBox(height: 10),
                            Container(
                              width: double.infinity,
                              child: ElevatedButton(
                                onPressed: () {},
                                style: ButtonStyle(
                                    shape: MaterialStateProperty.all<
                                            RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(6.0),
                                ))),
                                child: Text('Cadastrar', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        );
      },
    ),
  );
}

Widget inputFile({label, obscureText = false}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Text(
        label,
        style: TextStyle(
            fontSize: 15, fontWeight: FontWeight.w400, color: Colors.black87),
      ),
      SizedBox(height: 5),
      TextField(
        obscureText: obscureText,
        decoration: InputDecoration(
            isDense: true,
            contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            enabledBorder:
                OutlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
            border:
                OutlineInputBorder(borderSide: BorderSide(color: Colors.grey))),
      ),
      SizedBox(height: 5),
    ],
  );
}
