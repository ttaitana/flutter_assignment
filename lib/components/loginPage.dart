import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return LoginPageState();
  }
}

class LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  TextFormField user;
  TextEditingController _controllerUser = TextEditingController();
  TextFormField password;
  TextEditingController _controllerPsw = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Form(
          key: _formKey,
          child: ListView(
            children: <Widget>[
              Image.asset(
                'resources/pikachu.jpg',
                height: 230,
              ),
              user = TextFormField(
                  controller: _controllerUser,
                  decoration: InputDecoration(
                      labelText: 'User Id',
                      hintText: 'Please enter user id',
                      icon: Icon(Icons.person)),
                  keyboardType: TextInputType.emailAddress,
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Please enter user id';
                    }else if (_controllerUser.text == 'admin' && _controllerPsw.text == 'admin') {
                      return 'User หรือ Password ไม่ถูกต้อง';
                    }
                    // }else if(value == 'admin' && password == 'admin'){
                    //   return 'User หรือ Password ไม่ถูกต้อง';
                    // }
                  }),
              password = TextFormField(
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
                    } else if (_controllerUser.text == 'admin' && _controllerPsw.text == 'admin') {
                      return 'User หรือ Password ไม่ถูกต้อง';
                    }
                  }),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: RaisedButton(
                  child: Text('LOGIN'),
                  onPressed: () {
                    if (_formKey.currentState.validate()) {
                      // Scaffold.of(context).showSnackBar(
                      //     SnackBar(content: Text('Process Data')));
                      Navigator.pushNamed(context, '/home');
                    }
                  },
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  // InkWell(
                  //   child: Text('Register New Account'),
                  //   highlightColor: Colors.orange,
                  //   onTap: (){
                  //     Navigator.pushNamed(context, '/register');
                  //   },
                  // ),
                  FlatButton(
                    padding: EdgeInsets.only(right: 0),
                    child: Text('Register New Account'),
                    textColor: Color.fromRGBO(24, 178, 140, 1),
                    onPressed: () {
                      Navigator.pushNamed(context, '/register');
                    },
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
