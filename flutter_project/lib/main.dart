import 'package:flutter/material.dart';

void main() => runApp(Login());

class Login extends StatefulWidget {
  @override
  _Login createState() => new _Login();
}

class _Login extends State<Login> {
  //获取Key用来获取Form表单组件
  GlobalKey<FormState> loginKey = new GlobalKey<FormState>();
  String userName;
  String password;
  bool isShowPassWord = false;

  void login() {
    //读取当前的Form状态
    var loginForm = loginKey.currentState;
    //验证Form表单
    if (loginForm.validate()) {
      loginForm.save();
      print('userName: ' + userName + ' password: ' + password);
    }
  }

  void showPassWord() {
    setState(() {
      isShowPassWord = !isShowPassWord;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: '',
      home: new Scaffold(
        body: new Column(
          children: <Widget>[
            new Container(
                padding: EdgeInsets.only(top: 100.0, bottom: 10.0),
                child: new Text(
                  '登 录',
                  style: TextStyle(
                      color: Color.fromARGB(255, 53, 53, 53), fontSize: 50.0),
                )),
            new Container(
              padding: const EdgeInsets.all(16.0),
              child: new Form(
                key: loginKey,
                autovalidate: true,
                child: new Column(
                  children: <Widget>[
                    new Container(
                      decoration: new BoxDecoration(
                          border: new Border(
                              bottom: BorderSide(
                                  color: Color.fromARGB(255, 240, 240, 240),
                                  width: 1.0))),
                      child: new TextFormField(
                        decoration: new InputDecoration(
                          labelText: '用户名',
                          labelStyle: new TextStyle(
                              fontSize: 20.0,
                              color: Color.fromARGB(255, 93, 93, 93)),
                          border: InputBorder.none,
                        ),
                        keyboardType: TextInputType.phone,
                        onSaved: (value) {
                          userName = value;
                        },
                        validator: (phone) {
                        },
                        onFieldSubmitted: (value) {},
                      ),
                    ),
                    new Container(
                      decoration: new BoxDecoration(
                          border: new Border(
                              bottom: BorderSide(
                                  color: Color.fromARGB(255, 240, 240, 240),
                                  width: 1.0))),
                      child: new TextFormField(
                        decoration: new InputDecoration(
                            labelText: '密码',
                            labelStyle: new TextStyle(
                                fontSize: 20.0,
                                color: Color.fromARGB(255, 93, 93, 93)),
                            border: InputBorder.none,
                            ),
                        obscureText: !isShowPassWord,
                        onSaved: (value) {
                          password = value;
                        },
                      ),
                    ),
                    new Container(
                      height: 45.0,
                      margin: EdgeInsets.only(top: 40.0),
                      child: new SizedBox.expand(
                        child: new RaisedButton(
                          onPressed: login,
                          color: Color.fromARGB(255, 127, 255, 212),
                          child: new Text(
                            '登 录',
                            style: TextStyle(
                                fontSize: 20.0,
                                color: Color.fromARGB(255, 255, 255, 255)),
                          ),
                          shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(45.0)),
                        ),
                      ),
                    ),
                    new Container(
                      height: 45.0,
                      margin: EdgeInsets.only(top: 40.0),
                      child: new SizedBox.expand(
                        child: new RaisedButton(
                          onPressed: login,
                          color: Color.fromARGB(255, 127, 255, 212),
                          child: new Text(
                            '微服务权限',
                            style: TextStyle(
                                fontSize: 20.0,
                                color: Color.fromARGB(255, 255, 255, 255)),
                          ),
                          shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(45.0)),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
