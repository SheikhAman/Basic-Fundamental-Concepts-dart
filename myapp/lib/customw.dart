import 'package:flutter/material.dart';

class CustomWidget extends StatelessWidget {
  const CustomWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.pink,
      child: Container(
        color: Colors.orange,
        margin: EdgeInsets.all(15.0),
        child: Container(
          color: Colors.green,
          margin: EdgeInsets.all(15.0),
          child: Container(
            color: Colors.blue,
            margin: EdgeInsets.all(15.0),
            child: Container(
              color: Colors.yellow,
              margin: EdgeInsets.all(15.0),
              child:
                  _methodCustom(), //thats how you create a custom method widget
            ),
          ),
        ),
      ),
    );
  }
}

// 16th custom widget method

Widget _methodCustom() {
  // 16th custom widget method
  // return_type function_name () {}
  return Container(
    color: Colors.purple,
    margin: EdgeInsets.all(15.0),
  );
}
