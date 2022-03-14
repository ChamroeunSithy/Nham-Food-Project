import 'package:flutter/material.dart';
import 'package:flutter_assignment_3/controller/counter_controller.dart';
import 'package:get/get.dart';

class CartDialog extends StatelessWidget {
  CartDialog(
      {Key? key, required this.img, required this.name, required this.price})
      : super(key: key);
  final String img, name, price;
  final controller = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.0,
      child: Row(
        children: [
          Container(
            height: 100.0,
            width: 100.0,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                    img,
                  ),
                  fit: BoxFit.cover),
              color: Colors.amber,
              borderRadius: const BorderRadius.all(
                Radius.circular(18),
              ),
            ),
          ),
          const Spacer(),
          SizedBox(
            width: 250.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Spacer(),
                Column(
                  children: [
                    const Spacer(),
                    Text(
                      name,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                      ),
                    ),
                    const SizedBox(
                      height: 8.0,
                    ),
                    Row(
                      children: [
                        IconButton(
                            onPressed: () {
                              controller.decrement();
                            },
                            icon: const Icon(Icons.remove)),
                        Obx(() {
                          return Text(
                            '${controller.counter}',
                            style: const TextStyle(fontSize: 20.0),
                          );
                        }),
                        IconButton(
                            onPressed: () {
                              controller.increment();
                            },
                            icon: const Icon(Icons.add)),
                      ],
                    ),
                    const Spacer(),
                  ],
                ),
                const Spacer(),
                Column(
                  children: [
                    const SizedBox(
                      height: 23.0,
                    ),
                    Text(
                      "\$" + price,
                      style: const TextStyle(
                          fontSize: 18.0, color: Colors.black45),
                    ),
                    const SizedBox(
                      height: 12.0,
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        height: 30.0,
                        width: 30.0,
                        child: const Icon(Icons.add),
                        decoration: const BoxDecoration(
                            color: Colors.amber,
                            borderRadius: BorderRadius.all(Radius.circular(6))),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
