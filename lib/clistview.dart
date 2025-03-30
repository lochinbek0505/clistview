library clistview;
export 'package:clistview/clistview.dart';
import 'package:flutter/material.dart';

class CustomListview extends StatelessWidget {
  VoidCallback onTap;
  Widget child;
  int length;


  CustomListview(this.onTap, this.child, this.length);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        alignment: Alignment.center,
        child: ListView.builder(
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () => onTap,
              child: child,
            );
          },
          itemCount: length,
        ),
      ),
    );
  }
}
