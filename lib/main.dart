import 'dart:async';

import 'package:flutter/material.dart';

// 引入第三方包
import 'package:english_words/english_words.dart';

// 状态练习
import './state/TapboxA.dart';
import './state/TapboxB.dart';
import './state/TapboxC.dart';

// 基础组件展示
import './widget/basic/index.dart';
// 布局组件
import './widget/layout/index.dart';
// 容器组件
import './widget/container/index.dart';
// 滚动组件
import './widget/scroll/index.dart';
// 功能组件
import './widget/function/index.dart';



void collectLog(String line) {
  print(line);
}

void reportErrorAndLog(FlutterErrorDetails details){
  print(details);
}

FlutterErrorDetails makeDetails(Object obj, StackTrace stack) {
  return obj;
}

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue
      ),
      routes: {
        "new_page": (context) => EchoRoute(),
        "tapboxb_new_page": (context) => TapboxBNewRoute(),
        "basic_widget_page": (context) => BasicWidgetRoute(),
        "layout_widget_page": (context) => LayoutWidgetRoute(),
        "container_widget_page": (context) => ContainerWidgetRoute(),
        "scroll_widget_page": (context) => ScrollWidgetRoute(),
        "function_widget_page": (context) => FunctionWidgetRoute()
      },
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: ListView(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        shrinkWrap: true,
        padding: const EdgeInsets.all(20.0),
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'You have pushed the button this many times:$_counter',
              ),
              FlatButton(
                child: Text("open new route", textAlign: TextAlign.start,),
                textColor: Colors.blue,
                onPressed: () {
                  Navigator.of(context).pushNamed("new_page", arguments: "hi");
                },
              ),
              FlatButton(
                child: Text('basic widget page'),
                textColor: Colors.blue,
                onPressed: () {
                  Navigator.pushNamed(context, 'basic_widget_page');
                },
              ),
              FlatButton(
                child: Text('layout widget page'),
                textColor: Colors.blue,
                onPressed: () {
                  Navigator.pushNamed(context, 'layout_widget_page');
                },
              ),
              FlatButton(
                child: Text('container widget page'),
                textColor: Colors.blue,
                onPressed: () {
                  Navigator.pushNamed(context, 'container_widget_page');
                },
              ),
              FlatButton(
                child: Text('scroll widget page'),
                textColor: Colors.blue,
                onPressed: () {
                  Navigator.pushNamed(context, 'scroll_widget_page');
                },
              ),
              FlatButton(
                child: Text('function widget page'),
                textColor: Colors.blue,
                onPressed: () {
                  Navigator.pushNamed(context, 'function_widget_page');
                },
              ),
            ],
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

// 路由组件
class EchoRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context).settings.arguments;
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("New route")
      ),
      body: Center(
        child: Text("$args, this is new route")
      ),
    );
  }
}

// 英文组件
class RandomWordsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final wordPair = new WordPair.random();
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: new Text(wordPair.toString()),
    );
  }
}

// 测试状态的路由
class TapboxBNewRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Tapbox B'),
      ),
      body: Center(
        child: ParentWidget(),
      ),
    );
  }
}

// 计数状态组件
class CounterWidget extends StatefulWidget {
  const CounterWidget({
    Key key,
    this.initValue: 0
  });
  final int initValue;

  @override
  _CounterWidgetState createState() => new _CounterWidgetState();
}

// 状态组件的生命周期
class _CounterWidgetState extends State<CounterWidget> {
  int _counter;

// 初始化的时候执行 类似于react的
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _counter = widget.initValue;
    print("initState");
  }

  // 类似于react得render
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    print('build');
    return Scaffold(
      body: Center(
        child: FlatButton(
          child: Text("$_counter"),
          onPressed: () => setState(()=> ++_counter),
        ),
      )
    );
  }

  // 类似于react
  @override
  void didUpdateWidget(CounterWidget oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
    print('didUpdateWidget');
  }

  @override
  void deactivate() {
    // TODO: implement deactivate
    super.deactivate();
    print('deactivate');
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    print('dispose');
  }

  @override
  void reassemble() {
    // TODO: implement reassemble
    super.reassemble();
    print('reassemble');
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    print('didChangeDependencies');
  }
}