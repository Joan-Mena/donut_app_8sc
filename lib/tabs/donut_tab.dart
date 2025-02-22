import 'package:flutter/material.dart';

import '../utils/donut_tile.dart';

class DonutTab extends StatelessWidget {
  //Lista de donas
  final List donutsOnSale = [
    //[donutFlavor, donutPriece, donutColor, iamgeName]
    ["Ice Cream", "60", Colors.blue, "lib/images/icecream_donut.png"],
    ["Strawberry", "45", Colors.red, "lib/images/strawberry_donut.png"],
    ["Grape Ape", "48", Colors.purple, "lib/images/grape_donut.png"],
    ["Choco", "50", Colors.brown, "lib/images/chocolate_donut.png"],
    ["ChocoWhite", "55", Colors.blue, "lib/images/donaChocolateBlanco.png"],
    ["ManiCream", "55", Colors.red, "lib/images/donaCremaDeMani.png"],
    ["Glaceada", "48", Colors.purple, "lib/images/DonaGlaceada.png"],
    ["Vanila", "50", Colors.brown, "lib/images/donaVainilla.png"]
  ];
  DonutTab({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      //como se va a distribuir
      //en crossAxistCount podemos asignar el numero de columnas que podemos tener he ir modificando.

      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 1 /
              1.5), //Esta linea refiere a la proporcion de como se ve en pantalla
      //que elementos tendra
      itemBuilder: (context, index) {
        return DonutTile(
          donutFlavor: donutsOnSale[index][0],
          donutPrice: donutsOnSale[index][1],
          donutColor: donutsOnSale[index][2],
          imageName: donutsOnSale[index][3],
        );
      },
      //cuantos elementos
      itemCount: donutsOnSale.length,
    );
  }
}
