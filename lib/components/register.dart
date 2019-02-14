import 'package:flutter/material.dart';

class Registation extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return RegistationState();
  }
}

class RegistationState extends State<Registation> {
  final _regisKey = GlobalKey<FormState>();
  TextFormField user;
  TextEditingController _controllerUser = TextEditingController();

  TextFormField psw;
  TextEditingController _controllerPsw = TextEditingController();

  TextFormField pswRe;
  TextEditingController _controllerPswRe = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('REGISTER'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Form(
          key: _regisKey,
          child: ListView(
            children: <Widget>[
              user = TextFormField(
                  controller: _controllerUser,
                  decoration: InputDecoration(
                      labelText: 'email',
                      // hintText: 'Please enter user id',
                      icon: Icon(Icons.person)),
                  keyboardType: TextInputType.emailAddress,
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'กรุณาระบุข้อมูลให้ครบถ้วน';
                    } else if (_controllerUser.text == 'admin') {
                      return 'user นี้มีอยู่ในระบบแล้ว';
                    }
                  }),
              psw = TextFormField(
                  controller: _controllerPsw,
                  decoration: InputDecoration(
                      labelText: 'Password',
                      hintText: 'Please input your password',
                      icon: Icon(Icons.lock)),
                  obscureText: true,
                  keyboardType: TextInputType.text,
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Please enter password';
                    }else if (_controllerPsw.text != _controllerPswRe.text) {
                      return 'Password ไม่ตรงกัน';
                    }
                  }),
              pswRe = TextFormField(
                  controller: _controllerPswRe,
                  decoration: InputDecoration(
                      labelText: 'Re-Password',
                      hintText: 'Please input your password',
                      icon: Icon(Icons.lock)),
                  obscureText: true,
                  keyboardType: TextInputType.text,
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Please enter password';
                    } else if (_controllerPsw.text != _controllerPswRe.text) {
                      return 'Password ไม่ตรงกัน';
                    }
                  }),
              Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: RaisedButton(
                    child: Text('CONTINUE'),
                    onPressed: () {
                      if (_regisKey.currentState.validate()) {
                        // Scaffold.of(context).showSnackBar(
                        //     SnackBar(content: Text('Process Data')));
                        Navigator.pop(context);
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
