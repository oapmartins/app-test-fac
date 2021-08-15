import 'dart:ffi';

import 'package:flutter/material.dart';

class InfoPage extends StatelessWidget {
  const InfoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15.0),
      color: Colors.green,
      child: Container(
        padding: const EdgeInsets.all(20.0),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(18)
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 230,
                  child: Image.asset('assets/images/fac.jpg'),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                    child: Text(
                        'A FAC é especializada em soluções de sistemas na área de gestão pública, com modúlos de Contabilidade, Folha de Pagamento, Protocolo, Compras, Licitação, Concessão de Benefício, transparência e outros, sendo que todos os modulos são totalmente integrados.',
                        textAlign: TextAlign.justify))
              ],
            )
          ],
        ),
      ),
    );
  }
}
