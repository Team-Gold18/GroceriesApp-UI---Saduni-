import 'package:flutter/material.dart';

class Account extends StatefulWidget {
  const Account({Key? key}) : super(key: key);

  @override
  _AccountState createState() => _AccountState();
}

class _AccountState extends State<Account> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: Colors.green.shade400,
            onSurface: Colors.transparent,
            shadowColor: Colors.transparent,
          ),
          onPressed: () {
            showModalBottomSheet(
              context: context,
              builder: (context) => Center(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.green.shade400,
                    onSurface: Colors.transparent,
                    shadowColor: Colors.transparent,
                  ),
                  child: Text("Welcome"),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),
            );
          },
          child: Text("Open Me"),
        ),
      ),
    );
  }
}
