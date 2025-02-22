import 'package:donut_app_8sc/utils/burger_tile.dart';
import 'package:flutter/material.dart';

class SmoothieTab extends StatelessWidget {
  //Lista de donas
  final List smoothieOnSale = [
    //[donutFlavor, donutPriece, donutColor, iamgeName]
    ["Abellanas&menta", "60", Colors.blue, "lib/images/smoothieAbellanas.png"],
    ["Coco&Fresas", "50", Colors.red, "lib/images/smoothieCocoFresa.png"],
    ["Coco&Leche", "70", Colors.purple, "lib/images/smoothieCocoLeche.png"],
    ["FrutosRojos", "70", Colors.brown, "lib/images/smoothieFrutos.png"],
    ["Chokis", "75", Colors.lightGreen, "lib/images/smoothieGalletas.png"],
    ["IceCream", "90", Colors.amber, "lib/images/smoothieIcecream.png"],
    ["vainilla&leche", "55", Colors.blueGrey, "lib/images/smoothieNormal.png"],
    ["TeVerde", "50", Colors.lightBlue, "lib/images/smoothieVerde.png"]
  ];
  SmoothieTab({super.key});

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
        return BurgerTile(
          burgerFlavor: smoothieOnSale[index][0],
          burgerPrice: smoothieOnSale[index][1],
          burgerColor: smoothieOnSale[index][2],
          imageName: smoothieOnSale[index][3],
        );
      },
      //cuantos elementos
      itemCount: smoothieOnSale.length,
    );
  }
}
