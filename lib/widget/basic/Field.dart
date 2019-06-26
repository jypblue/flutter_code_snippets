import 'package:flutter/material.dart';

class FieldWidget extends StatefulWidget {
  FieldWidget({Key key}) : super(key: key);

  _FieldWidgetState createState() => _FieldWidgetState();
}

class _FieldWidgetState extends State<FieldWidget> {
  TextEditingController _unameController = new TextEditingController();
  TextEditingController _selectionController = new TextEditingController();
  FocusNode focusNode1 = new FocusNode();
  FocusNode focusNode2 = new FocusNode();
  FocusNode focusNode = new FocusNode();
  FocusScopeNode focusScopeNode;
  bool isFocus = false;

  // FormState
  TextEditingController _uname2Controller = new TextEditingController();
  TextEditingController _pwdController = new TextEditingController();
  GlobalKey _formKey = new GlobalKey<FormState>();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _unameController.addListener((){
      print(_unameController.text);
    });

    _selectionController.text = "hello world";
    _selectionController.selection = TextSelection(
      baseOffset: 2,
      extentOffset: _selectionController.text.length
    );

    focusNode.addListener((){
      print(focusNode.hasFocus);
      setState(() {
        isFocus = focusNode.hasFocus;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: DefaultTextStyle(
        style: TextStyle(
          color: Colors.red,
          fontSize: 20.0
        ),
        textAlign: TextAlign.start,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            TextField(
              controller: _selectionController,
            ),
            TextField(
              autofocus: false,
              controller: _unameController,
              onChanged: (v) {
                print("onchange: $v");
              },
              decoration: InputDecoration(
                labelText: '用户名',
                hintText: '用户名或邮箱',
                prefixIcon: Icon(Icons.person)
              ),
            ),
            TextField(
              decoration: InputDecoration(
                labelText: "密码",
                hintText: "您的登录密码",
                prefixIcon: Icon(Icons.lock)
              ),
              obscureText: true,
            ),

            TextField(
              autofocus: true,
              focusNode: focusNode1,
              decoration: InputDecoration(
                labelText: 'input1'
              ),
            ),

            TextField(
              focusNode: focusNode2,
              decoration: InputDecoration(
                labelText: 'input2'
              ),
            ),

            Builder(builder: (ctx) {
              return Column(
                children: <Widget>[
                  RaisedButton(
                    child: Text('移动焦点'),
                    onPressed: () {
                      if (null == focusScopeNode) {
                        focusScopeNode = FocusScope.of(context);
                      }
                      focusScopeNode.requestFocus(focusNode2);
                    },
                  ),
                  RaisedButton(
                    child: Text('隐藏键盘'),
                    onPressed: () {
                      focusNode1.unfocus();
                      focusNode2.unfocus();
                    },
                  )
                ],
              );
            }),

            // 自定义样式
            Container(
              child: TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  hintText: "电子邮件地址",
                  prefixIcon: Icon(Icons.email),
                  border: InputBorder.none
                ),
                focusNode: focusNode,
              ),
              decoration: BoxDecoration(
                border: Border.all(width: 1,color: isFocus ? Colors.blue : Colors.grey, style: BorderStyle.solid),
                borderRadius: BorderRadius.circular(10.0)
              ),
            ),

            // form text
            Form(
              key: _formKey,
              autovalidate: true,
              child: Column(
                children: <Widget>[
                  TextFormField(
                    autofocus: true,
                    controller: _uname2Controller,
                    decoration: InputDecoration(
                      labelText: "用户名",
                      hintText: "用户名或邮箱",
                      icon: Icon(Icons.person)
                    ),
                    // 校验
                    validator: (v) {
                      return v.trim().length > 0 ? null : "用户名不能为空";
                    }
                  ),
                  TextFormField(
                    controller: _pwdController,
                    decoration: InputDecoration(
                      labelText: "密码",
                      hintText: "您的登录密码",
                      icon: Icon(Icons.lock)
                    ),
                    obscureText: true,
                    validator: (v) {
                      return v.trim().length > 5 ? null : "密码不能少于6位";
                    },
                  ),
                  // 登录按钮
                  Padding(
                    padding: const EdgeInsets.only(top: 28.0),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          // context上下文指定不同
                          // 写法1
                          // child: RaisedButton(
                          //   padding: EdgeInsets.all(15.0),
                          //   child: Text('登录'),
                          //   color: Theme.of(context).primaryColor,
                          //   textColor: Colors.white,
                          //   onPressed: () {
                          //     if((_formKey.currentState as FormState).validate()) {
                          //       print(_uname2Controller.text +':'+_pwdController.text);
                          //     }
                          //   },
                          // ),
                          // 写法2
                          child: Builder(builder: (context) {
                            return RaisedButton(
                              padding: EdgeInsets.all(15.0),
                              child: Text('登录'),
                              color: Theme.of(context).primaryColor,
                              textColor: Colors.white,
                              onPressed: () {
                                if(Form.of(context).validate()) {
                                  print(_uname2Controller.text +':'+_pwdController.text);
                                }
                              },
                            );
                          }),
                        )
                      ],
                    ),
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
