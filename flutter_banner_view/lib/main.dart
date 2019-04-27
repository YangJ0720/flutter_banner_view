import 'package:flutter/material.dart';
import 'package:flutter_banner_view/banner_view_widget.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  /// 轮播网络图片
  List<Widget> _urls = List<Widget>();

  /// 轮播本地图片
  List<Widget> _paths = List<Widget>();

  @override
  void initState() {
    /// 初始化网络图片轮播页
    _urls.add(createImageByUrl(
        'https://img.mukewang.com/szimg/5c32c05b085f95bf06000338-360-202.jpg'));
    _urls.add(createImageByUrl(
        'https://img.mukewang.com/szimg/5c3ef588088403df06000338-360-202.jpg'));
    _urls.add(createImageByUrl(
        'https://img.mukewang.com/szimg/5c62a4dc0812e84106000338-360-202.jpg'));
    _urls.add(createImageByUrl(
        'https://img.mukewang.com/szimg/58f57d200001461105400300-360-202.jpg'));

    /// 初始化本地图片轮播页
    _paths.add(createImageByPath('images/a0q.png'));
    _paths.add(createImageByPath('images/a1r.png'));
    _paths.add(createImageByPath('images/a2s.png'));
    _paths.add(createImageByPath('images/a3t.png'));
    _paths.add(createImageByPath('images/a4u.png'));
    _paths.add(createImageByPath('images/a5v.png'));
    _paths.add(createImageByPath('images/a6w.png'));
    _paths.add(createImageByPath('images/a7x.png'));
    _paths.add(createImageByPath('images/a8y.png'));
    _paths.add(createImageByPath('images/a9z.png'));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BannerView'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Text('轮播网络图片', style: TextStyle(fontSize: 18),),
            Container(
              color: Color(0xFFDCDCDC),
              child: BannerViewWidget(
                items: _urls,
              ),
              height: 120,
            ),
            Text('轮播本地图片', style: TextStyle(fontSize: 18),),
            Container(
              color: Color(0xFFDCDCDC),
              child: BannerViewWidget(
                items: _paths,
              ),
              height: 120,
            ),
          ],
        ),
      ),
    );
  }

  Image createImageByUrl(String url) {
    return Image.network(
      url,
      fit: BoxFit.fill,
    );
  }

  Image createImageByPath(String path) {
    return Image.asset(
      path,
      fit: BoxFit.none,
    );
  }
}
