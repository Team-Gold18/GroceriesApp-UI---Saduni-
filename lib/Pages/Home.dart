import 'package:flutter/material.dart';
import "package:flutter_custom_clippers/flutter_custom_clippers.dart";
import 'package:flutter/services.dart';
import 'package:fruithub/Pages/Cart.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    SystemChrome.setEnabledSystemUIOverlays([]);
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
        backgroundColor: Color(0xffEDEFF4),
        body: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _ButtonAndSearch(),
            _ButtonList(),
            fruitList(),
          ],
        ));
  }
}

_ButtonAndSearch() {
  return Padding(
    padding: const EdgeInsets.all(15),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(
                  colors: [Color(0xffCAEC93), Color(0xffA3DD45)])),
          child: ElevatedButton(
            onPressed: () {},
            child: Icon(
              Icons.dehaze_rounded,
              size: 25,
            ),
            style: ElevatedButton.styleFrom(
                primary: Colors.transparent,
                onSurface: Colors.transparent,
                shadowColor: Colors.transparent,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                padding: const EdgeInsets.all(20)),
          ),
        ),
        Container(
          height: 50,
          width: 200,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30.0),
            color: Colors.white,
          ),
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide:
                    BorderSide(color: Colors.green.shade50, width: 32.0),
              ),
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white, width: 32.0),
                  borderRadius: BorderRadius.circular(30.0)),
              prefixIcon: Icon(Icons.search),
              labelText: 'Search',
            ),
          ),
        )
      ],
    ),
  );
}

_ButtonList() {
  return SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    child: Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: ElevatedButton(
              onPressed: () {},
              child: Text("FRUITS AND BERRIES",
                  style: TextStyle(color: Color(0xffA4A52D))),
              style: ElevatedButton.styleFrom(
                  primary: Color(0xffFFFBE0),
                  onSurface: Color(0xffFFFBE0),
                  shadowColor: Color(0xffFFFBE0),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(35),
                      side: BorderSide(color: Color(0xffA4A52D))))),
        ),
        ElevatedButton(
            onPressed: () {},
            child:
                Text("VEGETABLES", style: TextStyle(color: Color(0xff54A52D))),
            style: ElevatedButton.styleFrom(
                primary: Color(0xffE5FFE0),
                onSurface: Color(0xffE5FFE0),
                shadowColor: Color(0xffE5FFE0),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(35),
                    side: BorderSide(color: Color(0xff54A52D))))),
        Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: ElevatedButton(
              onPressed: () {},
              child: Text("BREAD", style: TextStyle(color: Color(0xff2DA58F))),
              style: ElevatedButton.styleFrom(
                  primary: Color(0xffE0FFF2),
                  onSurface: Color(0xffE0FFF2),
                  shadowColor: Color(0xffE0FFF2),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(35),
                      side: BorderSide(color: Color(0xff2DA58F))))),
        ),
        ElevatedButton(
            onPressed: () {},
            child: Text("MILK", style: TextStyle(color: Color(0xff2D6BA5))),
            style: ElevatedButton.styleFrom(
                primary: Color(0xffE0F2FF),
                onSurface: Color(0xffE0F2FF),
                shadowColor: Color(0xffE0F2FF),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(35),
                    side: BorderSide(color: Color(0xff2D6BA5))))),
      ],
    ),
  );
}

class fruitList extends StatefulWidget {
  const fruitList({Key? key}) : super(key: key);

  @override
  State<fruitList> createState() => _fruitListState();
}

class _fruitListState extends State<fruitList> {
  var isPressed;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    bool isVisible = true;

    // void AddtoCart() {
    //   setState(() {
    //     _isVisible = !_isVisible;
    //   });
    // }

    return Expanded(
      child: ListView(children: [
        Stack(
            alignment: Alignment.center,
            fit: StackFit.passthrough,
            children: [
              Padding(
                padding: const EdgeInsets.all(20),
                child: Container(
                  height: height * .3,
                  width: width * 1.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    gradient: const LinearGradient(
                        colors: [Color(0xffFFFCEE), Color(0xffFDE685)]),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: const [
                      SizedBox(
                        height: 200,
                        child: Image(
                          image: AssetImage("assests/images/banana.png"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Stack(
                alignment: Alignment.topRight,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 150),
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          isPressed = true;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.transparent,
                        onSurface: Colors.transparent,
                        shadowColor: Colors.transparent,
                        shape: const CircleBorder(
                            side: BorderSide(color: Colors.white)),
                      ),
                      child: Container(
                        width: 70,
                        height: 70,
                        child: Icon(
                          Icons.favorite,
                          color: (isPressed == true) ? Colors.red : Colors.grey,
                        ),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            gradient: LinearGradient(
                              colors: [
                                Colors.white.withOpacity(0.4),
                                Colors.white.withOpacity(0.2),
                              ],
                              begin: Alignment.bottomRight,
                              end: Alignment.topRight,
                            ),
                            boxShadow: const [
                              BoxShadow(
                                color: Colors.white60,
                                blurRadius: 6,
                                offset: Offset(0, 3),
                              )
                            ]),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  SizedBox(
                    height: 140.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: ClipPath(
                      clipper: OvalTopBorderClipper(),
                      child: Container(
                        height: 80,
                        width: width * .5,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(40),
                            bottomRight: Radius.circular(40),
                            topRight: Radius.circular(180),
                            topLeft: Radius.circular(80),
                          ),
                          color: Colors.white,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 40, bottom: 30),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  Text(
                                    "FRUITS AND BERRIES",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 10,
                                        color: Color(0xffA4A52D)),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  SizedBox(
                    height: 200,
                  ),
                  Container(
                    height: 80,
                    width: width * .9,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(40),
                        bottomRight: Radius.circular(40),
                        topRight: Radius.circular(40),
                        topLeft: Radius.circular(20),
                      ),
                      color: Colors.white,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text(
                                "Banana",
                                style: TextStyle(
                                    fontWeight: FontWeight.w700, fontSize: 26),
                              ),
                              Text(
                                "\$ 1.00 / Kg",
                                style: TextStyle(
                                    fontWeight: FontWeight.w200,
                                    fontSize: 16,
                                    color: Color(0xff626262)),
                              ),
                            ],
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Padding(
                            padding: const EdgeInsets.only(right: 0, left: 10),
                            //show hide button
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
                                shape: const CircleBorder(
                                    side: BorderSide(color: Colors.white)),
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
                                      colors: [
                                        Color(0xffCAEC93),
                                        Color(0xffA3DD45)
                                      ],
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
                    ),
                  ),
                ],
              ),
              //show hide container
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  SizedBox(
                    height: 200,
                  ),
                  Visibility(
                    maintainAnimation: true,
                    visible: true,
                    maintainSize: true,
                    maintainState: true,
                    child: Container(
                      height: 70,
                      width: width * .5,
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
                ],
              )
            ]),
        Stack(
            alignment: Alignment.center,
            fit: StackFit.passthrough,
            children: [
              Padding(
                padding: const EdgeInsets.all(20),
                child: Container(
                  height: height * .3,
                  width: width * 1.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    gradient: const LinearGradient(
                        colors: [Color(0xffFFF6EE), Color(0xffFDBF85)]),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: const [
                      SizedBox(
                        height: 200,
                        child: Image(
                          image: AssetImage("assests/images/orange.png"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Stack(
                alignment: Alignment.topRight,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 150),
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        primary: Colors.transparent,
                        onSurface: Colors.transparent,
                        shadowColor: Colors.transparent,
                        shape: const CircleBorder(
                            side: BorderSide(color: Colors.white)),
                      ),
                      child: Container(
                        width: 70,
                        height: 70,
                        child: const Icon(
                          Icons.favorite,
                          color: Colors.grey,
                        ),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            gradient: LinearGradient(
                              colors: [
                                Colors.white.withOpacity(0.4),
                                Colors.white.withOpacity(0.2),
                              ],
                              begin: Alignment.bottomRight,
                              end: Alignment.topRight,
                            ),
                            boxShadow: const [
                              BoxShadow(
                                color: Colors.white60,
                                blurRadius: 6,
                                offset: Offset(0, 3),
                              )
                            ]),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  SizedBox(
                    height: 140.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: ClipPath(
                      clipper: OvalTopBorderClipper(),
                      child: Container(
                        height: 80,
                        width: width * .5,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(40),
                            bottomRight: Radius.circular(40),
                            topRight: Radius.circular(180),
                            topLeft: Radius.circular(80),
                          ),
                          color: Colors.white,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 40, bottom: 30),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  Text(
                                    "FRUITS AND BERRIES",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 10,
                                        color: Color(0xffA4A52D)),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  SizedBox(
                    height: 200,
                  ),
                  Container(
                    height: 80,
                    width: width * .9,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(40),
                        bottomRight: Radius.circular(40),
                        topRight: Radius.circular(40),
                        topLeft: Radius.circular(20),
                      ),
                      color: Colors.white,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text(
                                "Tangerine",
                                style: TextStyle(
                                    fontWeight: FontWeight.w700, fontSize: 26),
                              ),
                              Text(
                                "\$ 0.90 / Kg",
                                style: TextStyle(
                                    fontWeight: FontWeight.w200,
                                    fontSize: 16,
                                    color: Color(0xff626262)),
                              ),
                            ],
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Padding(
                            padding: const EdgeInsets.only(right: 0, left: 10),
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                primary: Colors.transparent,
                                onSurface: Colors.transparent,
                                shadowColor: Colors.transparent,
                                shape: const CircleBorder(
                                    side: BorderSide(color: Colors.white)),
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
                                      colors: [
                                        Color(0xffCAEC93),
                                        Color(0xffA3DD45)
                                      ],
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
                    ),
                  )
                ],
              )
            ]),
        Stack(
            alignment: Alignment.center,
            fit: StackFit.passthrough,
            children: [
              Padding(
                padding: const EdgeInsets.all(20),
                child: Container(
                  height: height * .3,
                  width: width * 1.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    gradient: const LinearGradient(
                        colors: [Color(0xffF0FFEE), Color(0xffABFD85)]),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: const [
                      SizedBox(
                        height: 200,
                        child: Image(
                          image: AssetImage("assests/images/kiwi.png"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Stack(
                alignment: Alignment.topRight,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 150),
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        primary: Colors.transparent,
                        onSurface: Colors.transparent,
                        shadowColor: Colors.transparent,
                        shape: const CircleBorder(
                            side: BorderSide(color: Colors.white)),
                      ),
                      child: Container(
                        width: 70,
                        height: 70,
                        child: const Icon(
                          Icons.favorite,
                          color: Colors.grey,
                        ),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            gradient: LinearGradient(
                              colors: [
                                Colors.white.withOpacity(0.4),
                                Colors.white.withOpacity(0.2),
                              ],
                              begin: Alignment.bottomRight,
                              end: Alignment.topRight,
                            ),
                            boxShadow: const [
                              BoxShadow(
                                color: Colors.white60,
                                blurRadius: 6,
                                offset: Offset(0, 3),
                              )
                            ]),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  SizedBox(
                    height: 140.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: ClipPath(
                      clipper: OvalTopBorderClipper(),
                      child: Container(
                        height: 80,
                        width: width * .5,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(40),
                            bottomRight: Radius.circular(40),
                            topRight: Radius.circular(180),
                            topLeft: Radius.circular(80),
                          ),
                          color: Colors.white,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 40, bottom: 30),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  Text(
                                    "FRUITS AND BERRIES",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 10,
                                        color: Color(0xffA4A52D)),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  SizedBox(
                    height: 200,
                  ),
                  Container(
                    height: 80,
                    width: width * .9,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(40),
                        bottomRight: Radius.circular(40),
                        topRight: Radius.circular(40),
                        topLeft: Radius.circular(20),
                      ),
                      color: Colors.white,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text(
                                "Kiwi",
                                style: TextStyle(
                                    fontWeight: FontWeight.w700, fontSize: 26),
                              ),
                              Text(
                                "\$ 0.90 / Kg",
                                style: TextStyle(
                                    fontWeight: FontWeight.w200,
                                    fontSize: 16,
                                    color: Color(0xff626262)),
                              ),
                            ],
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Padding(
                            padding: const EdgeInsets.only(right: 0, left: 10),
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                primary: Colors.transparent,
                                onSurface: Colors.transparent,
                                shadowColor: Colors.transparent,
                                shape: const CircleBorder(
                                    side: BorderSide(color: Colors.white)),
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
                                      colors: [
                                        Color(0xffCAEC93),
                                        Color(0xffA3DD45)
                                      ],
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
                    ),
                  )
                ],
              )
            ]),
      ]),
    );
  }
}
