import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gptwallet/UI/tabs/FirstTab.dart';
import 'package:gptwallet/UI/tabs/FourthTab.dart';
import 'package:gptwallet/UI/tabs/SecondTab.dart';
import 'package:gptwallet/UI/tabs/ThirdTab.dart';

class importWallet extends StatefulWidget {
  const importWallet({Key? key}) : super(key: key);

  @override
  State<importWallet> createState() => _importWalletState();
}

class _importWalletState extends State<importWallet> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          elevation: 0,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back,color: Colors.black,size: 24,),
            onPressed: (){
              Get.back();
            },
          ),
          backgroundColor: Colors.transparent,
          title: const Text(
            'Import Wallet',
            style: TextStyle(
              color: Colors.black,
              fontSize: 17
            ),
          ),
        ),
        body: Column(
          children: const [
            TabBar(
              labelColor: Colors.black,
                isScrollable: true,
                tabs:[
                  SizedBox(width: 60, child: Tab(text: 'Seed')),
                  SizedBox(width: 60, child: Tab(text: 'keystore')),
                  Tab(text: 'Private Key'),
                  Tab(text: 'Watch only Wallets'),
                ]
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(top: 20,bottom: 20),
                child: TabBarView(
                    children: [
                      FirstTab(),
                      SecondTab(),
                      ThirdTab(),
                      FourthTab(),
                ]),
              ),
            )
          ],
        ),
      ),
    );
  }
}
