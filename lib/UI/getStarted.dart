import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'accountsPage.dart';

class getStarted extends StatefulWidget {
  const getStarted({Key? key}) : super(key: key);

  @override
  State<getStarted> createState() => _getStartedState();
}

class _getStartedState extends State<getStarted> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: Column(
          children: [
            Expanded(
              flex: 4,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [
                  Image.asset('assets/pics/bitcoin.jpg',width: double.infinity,height: 300,),
                  Text(
                    'Easiest way to manage your wallet',
                    style: TextStyle(
                        fontFamily: 'Gilroy',
                        fontSize: 40,
                        fontWeight: FontWeight.w700,
                        color: Colors.white
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Manage all your exchanges operations \n & simulate your trading',
                    style: TextStyle(
                        fontFamily: 'Gilroy',
                        fontSize: 12,
                        //fontWeight: FontWeight.w700,
                        color: Colors.grey
                    ),
                  ),
                ],
              ),
            ),


            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  MaterialButton(
                   height: 60,
                   color: Colors.white,
                   minWidth: double.infinity,
                    shape: RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(16)),
                   onPressed: (){
                     Get.to(
                         ()=> accountsPage(),
                       transition: Transition.cupertino
                     );
                   },
                   child: Text(
                     'Get started',
                     style: TextStyle(
                       fontSize: 15,
                       fontFamily: 'Gilroy',
                       fontWeight: FontWeight.w600
                     ),
                   ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
