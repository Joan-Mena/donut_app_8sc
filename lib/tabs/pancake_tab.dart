import 'package:donut_app_8sc/utils/pancake_tile.dart';
import 'package:flutter/material.dart';

class PancakeTab extends StatelessWidget {
  //Lista de donas
  final List PancakeOnSale = [
    //[donutFlavor, donutPriece, donutColor, iamgeName]
    ["Fresas", "45", Colors.blue, "lib/images/panCakeFresas.jpg"],
    ["FrutosRojos", "60", Colors.red, "lib/images/panCakeFrutosRojos.jpg"],
    ["CremaDeMani", "50", Colors.purple, "lib/images/panCakeMani.jpg"],
    ["Mantequillados", "40", Colors.brown, "lib/images/panCakeMantequila.jpg"],
    ["ConMaple", "45", Colors.lightGreen, "lib/images/panCakeMaple.jpg"],
    ["ConMiel", "60", Colors.amber, "lib/images/panCakeMiel.jpg"],
    ["Moras", "50", Colors.blueGrey, "lib/images/panCakeMoras.jpg"],
    ["aaaaña", "1000", Colors.lightBlue, "lib/images/panCakeAña.jpg"]
  ];
  PancakeTab({super.key});

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
        return PancakeTile(
          PancakeFlavor: PancakeOnSale[index][0],
          pancakePrice: PancakeOnSale[index][1],
          pancakeColor: PancakeOnSale[index][2],
          imageName: PancakeOnSale[index][3],
        );
      },
      //cuantos elementos
      itemCount: PancakeOnSale.length,
    );
  }
}
