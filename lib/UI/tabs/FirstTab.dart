import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FirstTab extends StatefulWidget {
  const FirstTab({Key? key}) : super(key: key);

  @override
  State<FirstTab> createState() => _FirstTabState();
}

class _FirstTabState extends State<FirstTab> {

  final _seed = TextEditingController();

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
                controller: _seed,
                decoration: const InputDecoration(
                  labelText: 'Enter seed phrase',
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
                onChanged: (value) {
                  setState(() {

                  });
                },

              ),
            ),

            MaterialButton(
              minWidth: double.infinity,
              shape: RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(100)),
              height: 45,
              color: Colors.blueAccent,
              disabledColor: Colors.black26,
              onPressed: _seed.text == '' ? null :  (){

              },
              child: Text(
                'import wallet',
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
