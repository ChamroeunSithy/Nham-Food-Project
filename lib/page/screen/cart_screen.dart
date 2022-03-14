import 'package:flutter/material.dart';
import 'package:flutter_assignment_3/widgets/cart_dialog.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Order list",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24.0),
        ),
      ),
      body: _buildBody,
    );
  }
}

get _buildBody => Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Container(
          alignment: Alignment.topLeft,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              _buildDateItem('Thursday', 'February', '10', 5),
              const SizedBox(
                height: 28.0,
              ),
              SizedBox(
                height: 400.0,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      CartDialog(
                          img:
                              'https://hips.hearstapps.com/del.h-cdn.co/assets/18/05/1517424682-salmon-burger-delish-1.jpg',
                          name: 'almon Burgers',
                          price: '10.0'),
                      const SizedBox(
                        height: 20.0,
                      ),
                      CartDialog(
                          img:
                              'https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fimg1.cookinglight.timeinc.net%2Fsites%2Fdefault%2Ffiles%2Fstyles%2Fmedium_2x%2Fpublic%2Fimage%2F2017%2F03%2Fmain%2Fbahn-mi-pizza-1705p73.jpg%3Fitok%3DK_OtDj8Z',
                          name: 'Banh Mi Pizza',
                          price: '11.0'),
                      const SizedBox(
                        height: 20.0,
                      ),
                      CartDialog(
                          img:
                              'https://i.ytimg.com/vi/HVi7xxQZDRQ/maxresdefault.jpg',
                          name: 'Afaham chicken',
                          price: '8.0'),
                      const SizedBox(
                        height: 20.0,
                      ),
                      CartDialog(
                          img:
                              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTwMIqII7Qk2IlC9NZtscK6sUoXdhdzHYB0Zl3HM_fzfv4Nr52_rwbbFsiPVpiRjHetpvY&usqp=CAU',
                          name: 'Caramer sauce',
                          price: '30.0'),
                      const SizedBox(
                        height: 20.0,
                      ),
                      CartDialog(
                          img:
                              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSdTDznMTbGRRrw6g5xq4iBPhGXXPyzi8L9Ldb1ekIc-lNOu8Zo-Izwt5Vv5xZp05FZaVY&usqp=CAU',
                          name: 'នំបាញ់ចុក',
                          price: '6.0')
                    ],
                  ),
                ),
              ),
              const Divider(
                color: Colors.black12,
                thickness: 1.0,
              ),
              Row(
                children: const [
                  Text(
                    "Total:",
                    style: TextStyle(
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black26),
                  ),
                  Spacer(),
                  Text(
                    '\$59.0',
                    style:
                        TextStyle(fontSize: 26.0, fontWeight: FontWeight.bold),
                  )
                ],
              ),
              const SizedBox(
                height: 24.0,
              ),
              SizedBox(
                width: 330.0,
                height: 50.0,
                child: MaterialButton(
                  onPressed: () {},
                  color: Colors.amber,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0)),
                  child: const Text(
                    "CheckOut",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );

Row _buildDateItem(String day, String month, String date, int item) {
  return Row(
    children: [
      Text(
        day + ", " + month + ' ' + date,
        style: const TextStyle(fontSize: 28.0, fontWeight: FontWeight.bold),
      ),
      const Spacer(),
      Text(
        "($item)",
        style: const TextStyle(
            color: Color.fromRGBO(16, 72, 18, 1),
            fontSize: 20.0,
            fontWeight: FontWeight.bold),
      )
    ],
  );
}
