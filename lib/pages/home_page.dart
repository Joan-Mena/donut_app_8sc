import 'package:donut_app_8sc/tabs/pizza_tab.dart';
import 'package:donut_app_8sc/utils/my_tab.dart';
import 'package:flutter/material.dart';

import '../tabs/burger_tab.dart';
import '../tabs/donut_tab.dart';
import '../tabs/smoothie_tab.dart';
import '../tabs/pancake_tab.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  List<Widget> myTabs = [
    //donut tab
    const MyTab(iconPath: 'lib/icons/donut.png', tabName: 'Donuts'),
    //burger
    const MyTab(iconPath: 'lib/icons/burger.png', tabName: 'Burger'),
    //smothie
    const MyTab(iconPath: 'lib/icons/smoothie.png', tabName: 'Smooothie'),
    //pancake
    const MyTab(iconPath: 'lib/icons/pancakes.png', tabName: 'PanCakes'),
    //pizza
    const MyTab(iconPath: 'lib/icons/pizza.png', tabName: 'Pizza'),
  ];
  //donut tab

  //burger tab
  //smothie tab
  //pancake tab
  //pizza tab
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: myTabs.length,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: Icon(
            Icons.menu,
            color: Colors.grey[800],
          ),
          actions: [
            Padding(
              //Le da pading a la derecha
              padding: const EdgeInsets.only(right: 12.0),
              child: IconButton(onPressed: () {}, icon: Icon(Icons.person)),
            )
          ],
        ),
        body: Column(
          //a qui puso el maestro constante
          children: [
            //Texto "I want to eat"
            const Padding(
              padding: const EdgeInsets.only(left: 12.0),
              child: Row(
                children: [
                  const Text(
                    "I want to ",
                    style: TextStyle(fontSize: 32),
                  ),
                  const Text(
                    "eat",
                    style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline),
                  ),
                ],
              ),
            ),
            //Tab bar
            TabBar(
              tabs: myTabs,
              //color de texto seleccionado
              labelColor: Colors.pink, unselectedLabelColor: Colors.grey,
            ),
            //Tap bar view
            Expanded(
                child: TabBarView(children: [
              DonutTab(),
              BurgerTab(),
              SmoothieTab(),
              PancakeTab(),
              PizzaTab()
              //PizzaTab();
            ])),

            //Carrito
            Container(
              color: Colors.white,
              padding: const EdgeInsets.all(16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment
                    .spaceBetween, //para separar mas las cosas, los elementos
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 28),
                    child: Column(
                      //alineado a la izquierda
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "2 Items | \$45",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Delivery charges Includes',
                          style: TextStyle(fontSize: 12),
                        )
                      ],
                    ),
                  ),
                  ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.pink),
                      child: const Text(
                        "View Cart",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
