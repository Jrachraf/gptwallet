import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'importWallet.dart';

class accountsPage extends StatefulWidget {
  const accountsPage({Key? key}) : super(key: key);

  @override
  State<accountsPage> createState() => _accountsPageState();
}

class _accountsPageState extends State<accountsPage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,

          children: [


            Expanded(
              flex: 5,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset('assets/pics/logo.png',width: 130,height: 130,),
                  const SizedBox(
                    height: 8,
                  ),
                  const Text(
                    'GPT Wallet',
                    style: TextStyle(
                      fontFamily: 'Gilroy',
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.w700
                    ),
                  )
                ],
              ),
            ),

            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  MaterialButton(
                    height: 50,
                    color: Colors.black,
                    minWidth: double.infinity,
                    shape: RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(100),
                        side: BorderSide(
                            color: Colors.white,
                            width: 1.5
                        )
                    ),
                    onPressed: (){
                      Get.to(
                              ()=> importWallet(),
                          transition: Transition.cupertino
                      );
                    },
                    child: Text(
                      'Enter my wallet',
                      style: TextStyle(
                          color: Colors.white,
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
