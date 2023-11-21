import 'package:flutter/material.dart';
import 'package:grocery_items/cart_page.dart';
import 'package:grocery_items/components/grocery_item_tile.dart';
import 'package:grocery_items/model/grocery_model.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return CartPage();
          }));
        },
        child: Icon(
          Icons.shopping_bag,
          color: Colors.white,
        ),
        backgroundColor: Colors.black,
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Text(
                'Good morning!',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Text(
                'Lets order fresh items for you!',
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Divider(
                color: Colors.grey[400],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 24,
              ),
              child: Text(
                'Fresh items',
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
            ),
            Expanded(
              child: Consumer<GroceryModel>(builder: (context, data, child) {
                return GridView.builder(
                    padding: EdgeInsets.all(12),
                    itemCount: data.groceries.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                    ),
                    itemBuilder: (context, index) {
                      return GroceryItemTile(
                        name: data.groceries[index][0],
                        price: data.groceries[index][1],
                        imagePath: data.groceries[index][2],
                        Color: data.groceries[index][3],
                        ontap: () {
                          Provider.of<GroceryModel>(context, listen: false)
                              .addToCart(index);
                        },
                      );
                    });
              }),
            ),
          ],
        ),
      ),
    );
  }
}
