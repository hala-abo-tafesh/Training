import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  var emailcontroller = TextEditingController();
  var passwordcontroller = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
      ),
    body: Padding(
      padding: const EdgeInsets.all(20.0),
      child: Center( 
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Login',
                style: TextStyle(
                  fontSize: 40.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              TextFormField(
                controller: emailcontroller,
                keyboardType: TextInputType.emailAddress,
                onFieldSubmitted: ( String value) {
                 print(value);
                },
                onChanged: (String value)
                {
                  print(value);
                },
                decoration: InputDecoration(
                  labelText: 'Email Address',
                  prefixIcon: Icon(
                    Icons.email,
                  ) ,
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              TextFormField(
                controller: passwordcontroller,
                keyboardType: TextInputType.visiblePassword,
                obscureText: false,
                onFieldSubmitted: ( String value) {
                 print(value);
                },
                onChanged: (String value)
                {
                  print(value);
                },
                decoration: InputDecoration(
                  labelText: 'Password',
                  prefixIcon: Icon(
                    Icons.lock,
                  ) ,
                  suffixIcon: Icon(




                    
                    Icons.remove_red_eye,
                  ) ,
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                width: double.infinity,
              color: Colors.blue,
              child: MaterialButton(
                onPressed: ()
                {
              print(emailcontroller.text);
              print(passwordcontroller.text);
                },
              child: Text(
              'Login',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Don\'t have an account',
                  ),
                  TextButton(onPressed:() {},
                      child: Text(
                  'Register Now',
                  ),
                  ),
          ],
              ),
            ],
          ),
        ),
      ),
    ),
    );
  }
}
