import 'package:flutter/material.dart';

class Registation extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return RegistationState();
  }
}

class RegistationState extends State<Registation> {
  final _regisKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('REGISTER'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Form(
          child: ListView(
            children: <Widget>[
              TextFormField(
                  decoration: InputDecoration(
                      labelText: 'User Id',
                      // hintText: 'Please enter user id',
                      icon: Icon(Icons.person)),
                  keyboardType: TextInputType.emailAddress,
                  onSaved: (value) => print(value),
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'กรุณาระบุข้อมูลให้ครบถ้วน';
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
              TextFormField(
                  decoration: InputDecoration(
                      labelText: 'Re-Password',
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
                    if (_regisKey.currentState.validate()) {
                      Scaffold.of(context).showSnackBar(
                          SnackBar(content: Text('Process Data')));
                    }
                  },
                )),
            ],
          ),
        ),
      ),
    );
  }
}
