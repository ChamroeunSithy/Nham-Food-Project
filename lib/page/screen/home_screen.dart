import 'package:flutter/material.dart';
import 'package:flutter_assignment_3/page/screen/cart_screen.dart';
import 'package:flutter_assignment_3/widgets/big_card_food.dart';
import 'package:flutter_assignment_3/widgets/card_food.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppbar,
      drawer: _buildDrawer,
      body: _buildBoby,
    );
  }

  get _buildAppbar => AppBar(
        backgroundColor: Colors.amber,
        elevation: 0,
        // leading: InkWell(
        //   onTap: () {
        //     return Scaffold.of(context).openDrawer();
        //   },
        //   child: Image.network(
        //     "https://cdn-icons-png.flaticon.com/512/1377/1377172.png",
        //     scale: 15.0,
        //   ),
        // ),
        title: const Center(
          child: Text(
            "Nham Food",
            style: TextStyle(
              fontSize: 26.0,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const CartScreen(),
                ),
              );
            },
            icon: const Icon(
              Icons.shopping_cart,
              size: 30.0,
              color: Colors.black,
            ),
          ),
          Container(
            width: 18.0,
          )
        ],
      );

  get _buildDrawer => Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://media.wired.com/photos/598e35fb99d76447c4eb1f28/master/pass/phonepicutres-TA.jpg"),
              ),
              accountName: Text(
                "Sithy",
                style: TextStyle(color: Colors.white),
              ),
              accountEmail: Text(
                "sithy412@gmail.com",
                style: TextStyle(color: Colors.white),
              ),
              decoration: BoxDecoration(
                image: DecorationImage(
                    alignment: Alignment.centerRight,
                    image: NetworkImage(
                      "https://images.creativemarket.com/0.1.0/ps/7065029/1820/965/m1/fpnw/wm1/fskqsdmhcmtrnadgcmunaflw1nh5tavkkv3n4kztdzp8kbz3mdyso1yajjfq2c1o-.jpg?1569963940&s=bc72ef9863a09c077c9806ae416074af",
                    ),
                    fit: BoxFit.cover),
              ),
            ),
            const Divider(),
            ListTile(
              onTap: () {},
              leading: const Icon(Icons.feedback),
              title: const Text("Give feedback"),
              subtitle: const Text("Help us improve account"),
            ),
            const Divider(),
            ListTile(
              onTap: () {},
              leading: const Icon(Icons.settings),
              title: const Text("Setting & privacy"),
              trailing: const Icon(Icons.navigate_next_rounded),
            ),
            ListTile(
              onTap: () {},
              leading: const Icon(Icons.help_outline_outlined),
              title: const Text("Help & Support"),
              trailing: const Icon(Icons.navigate_next_rounded),
            ),
            ListTile(
              onTap: () {},
              leading: const Icon(
                Icons.dark_mode_rounded,
              ),
              title: const Text("Display & Accessibility"),
              trailing: const Icon(Icons.navigate_next_rounded),
            ),
            ListTile(
              onTap: () {},
              leading: const Icon(Icons.logout),
              title: const Text("Log Out"),
              trailing: const Icon(Icons.navigate_next_rounded),
            ),
          ],
        ),
      );

  get _buildBoby => Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: SizedBox(
                  height: 120.0,
                  child: Row(
                    children: const [
                      SizedBox(width: 1.0),
                      CardFood(
                          img:
                              "https://image.freepik.com/free-vector/hamburger-with-meat-cheese_1308-30898.jpg",
                          name: "Burger",
                          kind: "55"),
                      SizedBox(width: 15.0),
                      CardFood(
                          img:
                              "https://previews.123rf.com/images/ann24precious/ann24precious1605/ann24precious160500028/56914762-pizza-from-top-view.jpg",
                          name: "Pizza",
                          kind: "23"),
                      SizedBox(width: 15.0),
                      CardFood(
                          img:
                              "https://i.dlpng.com/static/png/4698536-kfc-png-dlpngcom-chicken-food-png-kfc-chicken-png-400_400_preview.png",
                          name: "CHICKEN",
                          kind: "55"),
                      SizedBox(width: 15.0),
                    ],
                  ),
                ),
              ),
              Container(
                height: 50.0,
                alignment: Alignment.topLeft,
                child: Row(
                  children: const [
                    Icon(
                      Icons.local_offer,
                      size: 28.0,
                      color: Color.fromRGBO(253, 192, 0, 1),
                    ),
                    Text(
                      " Today's Deals",
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: const [
                    BigCardFood(
                        img:
                            "https://cdn.shopify.com/s/files/1/0080/3094/5327/products/BLACKFOREST1.jpg?v=1604187669",
                        title: "Blackforest",
                        price: "\$44.0"),
                    SizedBox(width: 15.0),
                    BigCardFood(
                        img:
                            "https://img1.goodfon.com/wallpaper/nbig/c/86/desert-fruktovyy-salat-frukty.jpg",
                        title: "Fruity summer",
                        price: "\$10.0"),
                    SizedBox(width: 15.0),
                    BigCardFood(
                        img:
                            "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/summer-drinks-1584113861.jpg",
                        title: "Summer Drinks",
                        price: "\$46.5")
                  ],
                ),
              ),
              Container(
                height: 85.0,
                alignment: Alignment.centerLeft,
                child: Row(
                  children: const [
                    Icon(
                      Icons.stars,
                      size: 28.0,
                      color: Color.fromRGBO(253, 192, 0, 1),
                    ),
                    Text(
                      " Popular Items",
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: const [
                    BigCardFood(
                        img:
                            "https://a.cdn-hotels.com/gdcs/production51/d1045/381fbd5d-5163-46b0-8a78-c72554acff3c.jpg",
                        title: "ទឹកគ្រឿង",
                        price: "\$10.0"),
                    SizedBox(width: 15.0),
                    BigCardFood(
                        img:
                            "https://cms.dmpcdn.com/article/2021/03/23/a0aa5430-8b94-11eb-9835-d513229cdfbc_original.jpg",
                        title: "នំបាញ់ចុក",
                        price: "\$5.5"),
                    SizedBox(width: 15.0),
                    BigCardFood(
                        img:
                            "https://4.bp.blogspot.com/-KxValJFAAPU/WOMdaKtWjYI/AAAAAAAAAIk/htc04ei7hzkOf_XxG86HbAMCLuQkeJRIwCLcB/s1600/banh-xeo-crispy-pancakes-77516-1.jpeg",
                        title: "បាញ់ឆែវ",
                        price: "\$8.0")
                  ],
                ),
              ),
            ],
          ),
        ),
      );
}
