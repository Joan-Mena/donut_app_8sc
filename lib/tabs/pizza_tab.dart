import 'package:donut_app_8sc/utils/pizza_tile.dart';
import 'package:flutter/material.dart';

class PizzaTab extends StatelessWidget {
  //Lista de donas
  final List pizzaOnSale = [
    //[donutFlavor, donutPriece, donutColor, iamgeName]
    ["Aceitunas", "120", Colors.blue, "lib/images/pizzaAceitunas.png"],
    ["QuesoBurrata", "200", Colors.red, "lib/images/pizzaBurrata.png"],
    ["Carnívora", "170", Colors.purple, "lib/images/pizzaCarne.png"],
    ["champiñones", "130", Colors.brown, "lib/images/pizzaChampiñones.png"],
    ["Napolitana", "190", Colors.lightGreen, "lib/images/pizzaNapolitana.png"],
    ["Peperoni", "140", Colors.amber, "lib/images/pizzaPeperoni.png"],
    [
      "QuesoPhiladelphia",
      "185",
      Colors.blueGrey,
      "lib/images/pizzaQuesoCrema.png"
    ],
    ["Vegetarian", "160", Colors.lightBlue, "lib/images/pizzaVegetarian.png"]
  ];
  PizzaTab({super.key});

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
        return PizzaTile(
          pizzaFlavor: pizzaOnSale[index][0],
          pizzaPrice: pizzaOnSale[index][1],
          pizzaColor: pizzaOnSale[index][2],
          imageName: pizzaOnSale[index][3],
        );
      },
      //cuantos elementos
      itemCount: pizzaOnSale.length,
    );
  }
}
