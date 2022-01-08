import 'package:flutter/material.dart';

class Stocks extends StatelessWidget {
  const Stocks({Key? key}) : super(key: key);
  Color _iconColor = Colors.white;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Padding(
          padding: const EdgeInsets.fromLTRB(0, 20, 0, 10),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Color(0x50FFFFFF),
                        icon: Icon(Icons.star, color: _iconColor),
                        onPressed: () {
                          setState( (){
                            _iconColor = Colors.yellow;
                          });
                        }
                      ),
                      margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                      height: 180,
                    ),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Color(0x50FFFFFF),
                      ),
                      margin: EdgeInsets.fromLTRB(0, 0, 10, 0),
                      height: 180,
                    ),
                  ),
                ],
              ),
              Row(),
            ],
          ),
        ),
      ),
    );
  }
}
