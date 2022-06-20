import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'app_for_567',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: const MyHomePage(title: '567章知识点'),
      home: const myPage(),
    );
  }
}

class myPage extends StatelessWidget {
  const myPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const notePage();
  }
}

//选第六章 可滚动组件 （https://book.flutterchina.club/chapter6/index）
class notePage extends StatelessWidget {
  const notePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('567章知识点'),
      ),
      body: ListView(
        //
        shrinkWrap: true,
        padding: const EdgeInsets.all(20.0),
        children: <Widget>[
          //第六章 6.2 SingleChildScrollView
          TextButton(
            child: const Text("第六章 6.2 SingleChildScrollView",
                style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black)),
            onPressed: () {
              //导航到新路由
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return const notePage_6_2();
                }),
              );
            },
          ),
          //第六章 6.3 ListView
          TextButton(
            child: const Text("第六章 6.3 ListView",
                style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black)),
            onPressed: () {
              //导航到新路由
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return const notePage_6_3();
                }),
              );
            },
          ),
        ],
      ),
    );
  }
}

// 6.2.2 实例
// (https://book.flutterchina.club/chapter6/single_child_scrollview.html#_6-2-2-%E5%AE%9E%E4%BE%8B)
class notePage_6_2 extends StatelessWidget {
  const notePage_6_2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('6.2.2 实例'),
      ),
      body: ListView(
        //
        shrinkWrap: true,
        padding: const EdgeInsets.all(20.0),
        children: <Widget>[
          // 6.2.2 实例
          TextButton(
            child: const Text("实例",
                style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black)),
            onPressed: () {
              //导航到新路由
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return const notePage_6_2_2();
                }),
              );
            },
          ),
        ],
      ),
    );
  }
}

class notePage_6_2_2 extends StatelessWidget {
  const notePage_6_2_2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('6.2.2 实例'),
      ),
      body: SingleChildScrollViewTestRoute(),
    );
  }
}

class SingleChildScrollViewTestRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String str = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
    return Scrollbar(
      // 显示进度条
      child: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            //动态创建一个List<Widget>
            children: str
                .split("")
                //每一个字母都用一个Text显示,字体为原来的两倍
                .map((c) => Text(
                      c,
                      textScaleFactor: 2.0,
                    ))
                .toList(),
          ),
        ),
      ),
    );
  }
}

// 6.3 ListView
// （https://book.flutterchina.club/chapter6/listview.html）
class notePage_6_3 extends StatelessWidget {
  const notePage_6_3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('6.3 ListView'),
      ),
      body: ListView(
        //
        shrinkWrap: true,
        padding: const EdgeInsets.all(20.0),
        children: <Widget>[
          // ListView.builder
          TextButton(
            child: const Text("ListView.builder",
                style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black)),
            onPressed: () {
              //导航到新路由
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return const notePage_6_3_2();
                }),
              );
            },
          ),
          //ListView.separated
          TextButton(
            child: const Text("ListView.separated",
                style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black)),
            onPressed: () {
              //导航到新路由
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return const notePage_6_3_3();
                }),
              );
            },
          ),
          //实例：无限加载列表
          TextButton(
            child: const Text("无限加载列表",
                style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black)),
            onPressed: () {
              //导航到新路由
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return const notePage_6_3_6();
                }),
              );
            },
          ),
          //实例：添加固定列表头
          TextButton(
            child: const Text("添加固定列表头",
                style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black)),
            onPressed: () {
              //导航到新路由
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return const notePage_6_3_7();
                }),
              );
            },
          ),
        ],
      ),
    );
  }
}

// ListView.builder
// (https://book.flutterchina.club/chapter6/listview.html#_6-3-2-listview-builder)
class notePage_6_3_2 extends StatelessWidget {
  const notePage_6_3_2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView.builder'),
      ),
      body: ListView.builder(
        itemCount: 50, //这个参数可以作为下面的index限制
        itemExtent: 50.0, //强制高度为50.0
        itemBuilder: (BuildContext context, int index) {
          return ListTile(title: Text("$index"));
        },
      ),
    );
  }
}

// ListView.separated
// (https://book.flutterchina.club/chapter6/listview.html#_6-3-3-listview-separated)
class notePage_6_3_3 extends StatelessWidget {
  const notePage_6_3_3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView.separated'),
      ),
      body: ListView3(),
    );
  }
}

class ListView3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //下划线widget预定义以供复用。
    Widget divider1 = Divider(
      color: Colors.blue,
    );
    Widget divider2 = Divider(color: Colors.green);
    return ListView.separated(
      itemCount: 100,
      //列表项构造器
      itemBuilder: (BuildContext context, int index) {
        return ListTile(title: Text("$index"));
      },
      //分割器构造器
      separatorBuilder: (BuildContext context, int index) {
        return index % 2 == 0 ? divider1 : divider2;
      },
    );
  }
}

//  实例：无限加载列表
//  (https://book.flutterchina.club/chapter6/listview.html#_6-3-6-%E5%AE%9E%E4%BE%8B-%E6%97%A0%E9%99%90%E5%8A%A0%E8%BD%BD%E5%88%97%E8%A1%A8)
class notePage_6_3_6 extends StatelessWidget {
  const notePage_6_3_6({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('无限加载列表'),
      ),
      body: InfiniteListView(),
    );
  }
}

class InfiniteListView extends StatefulWidget {
  @override
  _InfiniteListViewState createState() => _InfiniteListViewState();
}

class _InfiniteListViewState extends State<InfiniteListView> {
  static const loadingTag = "##loading##"; //表尾标记
  var _words = <String>[loadingTag];

  @override
  void initState() {
    super.initState();
    _retrieveData();
  }

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: _words.length,
      itemBuilder: (context, index) {
        //如果到了表尾
        if (_words[index] == loadingTag) {
          //不足100条，继续获取数据
          if (_words.length - 1 < 100) {
            //获取数据
            _retrieveData();
            //加载时显示loading
            return Container(
              padding: const EdgeInsets.all(16.0),
              alignment: Alignment.center,
              child: SizedBox(
                width: 24.0,
                height: 24.0,
                child: CircularProgressIndicator(strokeWidth: 2.0),
              ),
            );
          } else {
            //已经加载了100条数据，不再获取数据。
            return Container(
              alignment: Alignment.center,
              padding: EdgeInsets.all(16.0),
              child: const Text(
                "没有更多了",
                style: TextStyle(color: Colors.grey),
              ),
            );
          }
        }
        //显示单词列表项
        return ListTile(title: Text(_words[index]));
      },
      separatorBuilder: (context, index) => Divider(height: .0),
    );
  }

  void _retrieveData() {
    Future.delayed(Duration(seconds: 2)).then((e) {
      setState(() {
        //重新构建列表
        _words.insertAll(
          _words.length - 1,
          //每次生成20个单词
          generateWordPairs().take(20).map((e) => e.asPascalCase).toList(),
        );
      });
    });
  }
}

// 添加固定列表头
// (https://book.flutterchina.club/chapter6/listview.html#%E6%B7%BB%E5%8A%A0%E5%9B%BA%E5%AE%9A%E5%88%97%E8%A1%A8%E5%A4%B4)
class notePage_6_3_7 extends StatelessWidget {
  const notePage_6_3_7({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('添加固定列表头'),
      ),
      body: Column(
        children: <Widget>[
          const ListTile(title: Text("商品列表")),
          Expanded(
            child: ListView.builder(
                itemBuilder: (BuildContext context, int index) {
              return ListTile(title: Text("$index"));
            }),
          ),
        ],
      ),
    );
  }
}
