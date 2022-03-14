import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          color: Colors.amber,
          alignment: Alignment.topCenter,
          child: Container(
            height: 420.0,
            decoration: const BoxDecoration(
              color: Colors.amber,
              image: DecorationImage(
                  image: NetworkImage(
                      "https://images.creativemarket.com/0.1.0/ps/7065029/1820/965/m1/fpnw/wm1/fskqsdmhcmtrnadgcmunaflw1nh5tavkkv3n4kztdzp8kbz3mdyso1yajjfq2c1o-.jpg?1569963940&s=bc72ef9863a09c077c9806ae416074af"),
                  fit: BoxFit.cover,
                  alignment: Alignment.centerRight),
            ),
          ),
        ),
        Positioned(
          bottom: 45.0,
          child: Container(
            height: 480.0,
            width: 380.0,
            decoration: const BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.black45,
                  blurRadius: 10.0,
                  offset: Offset(3, 3),
                ),
              ],
              color: Colors.white,
              borderRadius: BorderRadius.all(
                Radius.circular(20.0),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 90.0),
                SizedBox(
                  width: 340.0,
                  height: 110.0,
                  child: Column(
                    children: [
                      const Text(
                        "Set Your Name",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 28.0,
                        ),
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      const Text(
                        "Set your Email",
                        style: TextStyle(
                          fontSize: 22.0,
                          color: Colors.black38,
                        ),
                      ),
                      Container(
                        alignment: Alignment.centerRight,
                        child: const Icon(
                          Icons.border_color,
                          color: Colors.amber,
                        ),
                      ),
                    ],
                  ),
                ),
                const Divider(thickness: 1.5),
                SizedBox(
                  height: 90.0,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Mobile Number",
                        style: TextStyle(fontSize: 22.0, color: Colors.black38),
                      ),
                      SizedBox(
                        height: 8.0,
                      ),
                      Text(
                        'Set your mobile number',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 26.0),
                      )
                    ],
                  ),
                ),
                const Divider(thickness: 1.5),
                SizedBox(
                  height: 90.0,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Address",
                        style: TextStyle(fontSize: 22.0, color: Colors.black38),
                      ),
                      SizedBox(
                        height: 8.0,
                      ),
                      Text(
                        'Set your Email Address',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 26.0),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          top: 120.0,
          child: Container(
            height: 180.0,
            width: 180.0,
            decoration: BoxDecoration(
              image: const DecorationImage(
                image: NetworkImage(
                  "https://upload.wikimedia.org/wikipedia/commons/thumb/7/7e/Circle-icons-profile.svg/1024px-Circle-icons-profile.svg.png",
                ),
              ),
              shape: BoxShape.circle,
              color: Colors.amber,
              border: Border.all(
                width: 5.0,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
