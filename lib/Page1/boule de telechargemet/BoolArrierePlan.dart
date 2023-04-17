import 'package:flutter/material.dart';


class BoolArrierePlan extends StatelessWidget {
  const BoolArrierePlan({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
              child: Card(
                   margin: EdgeInsets.only(top:150),
                    elevation: 30,
                    shape: RoundedRectangleBorder(
                        borderRadius:BorderRadius.circular(100)
                    ), 
                    child: Container(
                        width: 150,
                        height: 150,
                        decoration: BoxDecoration(
                          border: Border.all(color:Colors.amber,width:3),
                          shape: BoxShape.circle,
                          color: Colors.black.withOpacity(0.4)
                       ) 
            ),
              ),
    );
  }
}