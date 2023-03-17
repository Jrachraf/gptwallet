import 'package:flutter/material.dart';

class SecondTab extends StatefulWidget {
  const SecondTab({Key? key}) : super(key: key);

  @override
  State<SecondTab> createState() => _SecondTabState();
}

class _SecondTabState extends State<SecondTab> {

  final _keystore = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15,),
        child: Column(
          children: [
            SizedBox(
              height: 5,
            ),
            Expanded(
              child: TextFormField(
                controller: _keystore,
                decoration: InputDecoration(
                  labelText: 'Enter Keystore JSON',
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
              onPressed: _keystore.text == '' ? null : (){

              },
              child: Text(
                'Continue',
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
