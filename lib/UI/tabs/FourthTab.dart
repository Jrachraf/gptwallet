import 'package:flutter/material.dart';

class FourthTab extends StatefulWidget {
  const FourthTab({Key? key}) : super(key: key);

  @override
  State<FourthTab> createState() => _FourthTabState();
}

class _FourthTabState extends State<FourthTab> {

  final _key = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15,),
        child: Column(
          children: [
            const SizedBox(
              height: 5,
            ),
            Expanded(
              child: TextFormField(
                controller: _key,
                autofocus: true,
                decoration: const InputDecoration(
                  labelText: 'Ethereum address or ENS name',
                  hintText: 'Ethereum address or ENS name',

                  labelStyle: TextStyle(
                      color: Colors.black
                  ),
                  border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.black,
                        width: 0.5,

                      )
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.black,
                        width: 1,
                      )
                  ),

                ),
                onChanged: (value){ setState(() {}); },
              ),
            ),
            MaterialButton(
              minWidth: double.infinity,
              shape: RoundedRectangleBorder(
                  borderRadius:  BorderRadius.circular(100)),
              height: 45,
              color: Colors.blueAccent,
              disabledColor: Colors.black26,
              onPressed: _key.text == '' ? null : (){

              },
              child: const Text(
                'Watch Wallet',
                style: TextStyle(
                    fontFamily: 'Gilroy',
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
