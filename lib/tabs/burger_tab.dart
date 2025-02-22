import 'package:donut_app_8sc/utils/burger_tile.dart';
import 'package:flutter/material.dart';

class BurgerTab extends StatelessWidget {
  //Lista de donas
  final List BurgersOnSale = [
    //[donutFlavor, donutPriece, donutColor, iamgeName]
    ["SalchiBurger", "50", Colors.blue, "lib/images/SalchiBurger.png"],
    [
      "Hamburguesa&Huevo",
      "45",
      Colors.red,
      "lib/images/hamburguesaConHuevo.png"
    ],
    [
      "Hamburguesa&Cebolla",
      "70",
      Colors.purple,
      "lib/images/hamburguesaArosCebolla.png"
    ],
    [
      "BurgerExtraCheese",
      "70",
      Colors.brown,
      "lib/images/hamburguesaExrtraCheese.png"
    ],
    ["Hamburguesa", "38", Colors.lightGreen, "lib/images/hamburguesa.png"],
    [
      "HamburguesaDoble",
      "60",
      Colors.amber,
      "lib/images/hamburguesa_doble.png"
    ],
    ["Sandwich", "25", Colors.blueGrey, "lib/images/sandwich.png"],
    ["Sandwich&huevo", "35", Colors.lightBlue, "lib/images/sandwichDhuevo.png"]
  ];
  BurgerTab({super.key});

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
          burgerFlavor: BurgersOnSale[index][0],
          burgerPrice: BurgersOnSale[index][1],
          burgerColor: BurgersOnSale[index][2],
          imageName: BurgersOnSale[index][3],
        );
      },
      //cuantos elementos
      itemCount: BurgersOnSale.length,
    );
  }
}
