import 'package:flutter/material.dart';
import 'package:kabob_ui/hexcolor.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }

  Color _color = HexColor("#03A9F4");
  Color _secondColor = HexColor("#00A4E5");

  Color _third = HexColor("#F5F5F5");
//  List<Color> facebookMessenger = [
//     _color,
//     Color(0xFF0072ff)
//   ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Container(
            padding: const EdgeInsets.all(16.0),
            height: 180,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(8.0)),
              gradient: LinearGradient(
                  begin: Alignment.bottomLeft,
                  end: Alignment.topRight,
                  colors: [_third, _third]),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 7,
                  offset: Offset(0, 3), // Shadow position
                ),
              ],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('SELENDRA', style: TextStyle(fontSize: 22)),
                        Image.asset(
                          'assets/sel_logo.png',
                          width: 40,
                          height: 40,
                        ),
                        // Container(
                        //   padding: const EdgeInsets.all(5.0),
                        //   decoration: BoxDecoration(
                        //       shape: BoxShape.circle, color: Colors.white),
                        //   child:
                        // ),
                      ],
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Text('0.009 SEL',
                          style: TextStyle(
                            fontSize: 18,
                          )),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width / 2,
                      child: Text(
                          '5GEEocqakdLcK9k6eMVyjExvioy1uMmha3Lr2k1jBoZR82nb',
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(fontSize: 14.0)),
                    ),
                    Icon(
                      Icons.copy,
                    )
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
