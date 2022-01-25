import 'package:flutter/material.dart';

class Cart extends StatefulWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  bool isVisible = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Show/Hide Widget'),
      ),
      body: Center(
          child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          SizedBox(
            height: 200,
          ),
          Visibility(
            maintainAnimation: true,
            visible: isVisible,
            maintainSize: true,
            maintainState: true,
            child: Container(
              height: 70,
              width: 200,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(40),
                  bottomRight: Radius.circular(40),
                  topRight: Radius.circular(40),
                  topLeft: Radius.circular(40),
                ),
                color: Colors.red,
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: const EdgeInsets.only(right: 0, left: 10),
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    isVisible = !isVisible;
                  });
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.transparent,
                  onSurface: Colors.transparent,
                  shadowColor: Colors.transparent,
                  shape:
                      const CircleBorder(side: BorderSide(color: Colors.white)),
                ),
                child: Container(
                  width: 70,
                  height: 70,
                  child: const Icon(
                    Icons.add_circle_outline_sharp,
                    size: 30,
                    color: Colors.white,
                  ),
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      gradient: LinearGradient(
                        colors: [Color(0xffCAEC93), Color(0xffA3DD45)],
                        begin: Alignment.bottomRight,
                        end: Alignment.topRight,
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.white60,
                          blurRadius: 6,
                          offset: Offset(0, 3),
                        )
                      ]),
                ),
              ),
            ),
          ),
        ],
      )),
    );
  }
}
