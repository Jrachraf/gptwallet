import 'package:flutter/material.dart';

class ThirdTab extends StatefulWidget {
  const ThirdTab({Key? key}) : super(key: key);

  @override
  State<ThirdTab> createState() => _ThirdTabState();
}

class _ThirdTabState extends State<ThirdTab> {

  final _private = TextEditingController();

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
                controller: _private,
                decoration: InputDecoration(
                  labelText: 'Enter private key',
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
                 onChanged: (value){
                  setState(() {

                  });
                 },
              ),
            ),

            Text(
              'IMPORT FROM ICLOUD/DROPBOX/GOOGLE DRIVE'
            ),
            SizedBox(
              height: 25,
            ),
            MaterialButton(
              minWidth: double.infinity,
              shape: RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(100)),
              height: 45,
              color: Colors.blueAccent,
              disabledColor: Colors.black26,
              onPressed: _private.text == '' ? null :(){

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
