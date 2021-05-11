import 'package:flutter/material.dart';
import './widgets/navigation_menu.dart';
import './utilities/icons.dart';
import './pages/home_page.dart';
import './pages/contact_page.dart';
import './pages/experience_page.dart';
import './pages/portfolio_page.dart';
import './pages/team_page.dart';

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
        primarySwatch: Colors.red,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

final GlobalKey<ScaffoldState> scaffoldKey = new GlobalKey<ScaffoldState>();
class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {
  static const double sizeIcon = 30.0;
  TabController _tabController;
  int _selectedMenu = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = new TabController(length: 5, vsync: this);
    _tabController.addListener(() {
      setState(() {
        _selectedMenu = _tabController.index;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      // appBar: AppBar(
      //   title: Text('My CV'),
      // ),
      body: Container(
        margin: EdgeInsets.only(top: 20),
        child: Row(
          children: <Widget>[
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    height: 70,
                    width: 70,
                    margin: EdgeInsets.only(bottom: 30),
                    child: Image.asset("assets/avatar.png"),
                    decoration: BoxDecoration(shape: BoxShape.circle),
                  ),
                  NavigationMenu(
                    navHome,
                    sizeIcon,
                    sizeIcon,
                    () {
                      _tabController.animateTo(0);
                    },
                    isSelection: _selectedMenu == 0,
                  ),
                  NavigationMenu(
                    navTime,
                    sizeIcon,
                    sizeIcon,
                    () {
                      _tabController.animateTo(1);
                    },
                    isSelection: _selectedMenu == 1,
                  ),
                  NavigationMenu(
                    navPortfolio,
                    sizeIcon,
                    sizeIcon,
                    () {
                      _tabController.animateTo(2);
                    },
                    isSelection: _selectedMenu == 2,
                  ),
                  NavigationMenu(
                    navGroup,
                    sizeIcon,
                    sizeIcon,
                    () {
                      _tabController.animateTo(3);
                    },
                    isSelection: _selectedMenu == 3,
                  ),
                  NavigationMenu(
                    navContact,
                    sizeIcon,
                    sizeIcon,
                    () {
                      _tabController.animateTo(4);
                    },
                    isSelection: _selectedMenu == 4,
                  ),
                ],
              ),
            ),
            Flexible(
                fit: FlexFit.tight,
                child: Container(
                  child: TabBarView(
                    controller: _tabController,
                    children: <Widget>[
                      HomePage(),
                      Experience(),
                      PortfolioPage(),
                      TeamPage(),
                      ContactPage(),
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
