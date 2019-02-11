import 'package:flutter/material.dart';
import './register.dart';

class LoginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return LoginPageState();
  }
}

class LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Form(
        key: _formKey,
        child: ListView(
          children: <Widget>[
            Image.asset(
              'resources/flutter-logo.png',
              height: 100,
            ),
            TextFormField(
                decoration: InputDecoration(
                    labelText: 'User Id',
                    hintText: 'Please enter user id',
                    icon: Icon(Icons.person)),
                keyboardType: TextInputType.emailAddress,
                onSaved: (value) => print(value),
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Please enter user id';
                  }
                }),
            TextFormField(
                decoration: InputDecoration(
                    labelText: 'Password',
                    hintText: 'Please input your password',
                    icon: Icon(Icons.lock)),
                obscureText: true,
                keyboardType: TextInputType.text,
                onSaved: (value) => print(value),
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Please enter password';
                  }
                }),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: RaisedButton(
                child: Text('LOGIN'),
                onPressed: () {
                  if (_formKey.currentState.validate()) {
                    Scaffold.of(context).showSnackBar(
                        SnackBar(content: Text('Process Data')));
                  }
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  InkWell(
                    child: Text('Register New Account'),
                    highlightColor: Colors.orange,
                    onTap: (){
                      Navigator.pushNamed(context, '/register');
                    },
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
