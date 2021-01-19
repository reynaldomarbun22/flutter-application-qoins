import 'package:flutter/material.dart';
import 'package:flutter_application_qoin/login/login.dart';

class HomePage extends StatefulWidget {
  static const routeName = '/home';
  final String usernameAcc;

  const HomePage({Key key, this.usernameAcc}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  String title = "";

  void _onItemTapped(int index) {
    String _title = "";
    if (index == 2) {
      return;
    } else {
      setState(() {
        // title = _title;
        _selectedIndex = index;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        return Future.value(false);
      },
      child: Scaffold(
        drawer: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          color: Colors.white,
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                // decoration: BoxDecoration(
                //     image: DecorationImage(
                //         image: AssetImage("assets/images/Group5.png"),
                //         fit: BoxFit.cover)),
                child: Container(
                    color: Colors.yellow,
                    height: 100,
                    width: 100,
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("UserName"),
                        Text(widget.usernameAcc),
                      ],
                    )),
              ),
              ListTile(
                title: Text("Home"),
                onTap: () {
                  Navigator.of(context).pop();
                },
              ),
              ListTile(
                title: Text("Home"),
                onTap: () {
                  Navigator.of(context).pop();
                },
              ),
              ListTile(
                title: Text("Home"),
                onTap: () {
                  Navigator.of(context).pop();
                },
              ),
              ListTile(
                title: Text("Home"),
                onTap: () {
                  Navigator.of(context).pop();
                },
              ),
              ListTile(
                title: Text("Home"),
                onTap: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          ),
        ),
        backgroundColor: Colors.white,
        appBar: AppBar(
          leading: Text(""),
          centerTitle: true,
          title:
              // title == ""
              // ?
              Image(
            image: AssetImage('assets/images/Group5.png'),
            width: MediaQuery.of(context).size.width / 6,
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.notifications,
                color: Colors.white,
                // color: Pallete.PRIMARY,
              ),
              onPressed: () {
                Navigator.pushReplacementNamed(context, LoginPage.routeName);
              },
            )
          ],
          elevation: 0.0,
        ),
        body: ListView(
          children: [
            Container(
              height: 150,
              child: Stack(
                children: <Widget>[
                  // Container(
                  //   height: 70,
                  //   decoration: BoxDecoration(
                  //       color: Colors.green,
                  //       borderRadius: BorderRadius.only(
                  //           bottomLeft: Radius.circular(10),
                  //           bottomRight: Radius.circular(10))),
                  // ),
                  Positioned(
                    top: 20,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 32.0),
                      child: Container(
                        height: 130,
                        width: MediaQuery.of(context).size.width - 60,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.3),
                              spreadRadius: 0.2,
                              blurRadius: 5,
                            )
                          ],
                          color: Colors.blueGrey,
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Expanded(
                                flex: 6,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[
                                    Expanded(
                                        flex: 9,
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          children: <Widget>[
                                            Container(
                                              padding: EdgeInsets.symmetric(
                                                  vertical: 1),
                                              child: InkWell(
                                                // onTap: _onShowBalance,
                                                child: Container(
                                                  height: 29,
                                                  child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .only(top: 8),
                                                          child: Text(
                                                            widget.usernameAcc,
                                                            textAlign:
                                                                TextAlign.end,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            style: TextStyle(
                                                                color:
                                                                    Colors.grey,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold),
                                                          ),
                                                        )
                                                      ]),
                                                ),
                                              ),
                                            ),
                                            Container(
                                              padding: EdgeInsets.symmetric(
                                                  vertical: 1),
                                              child: Text(widget.usernameAcc,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  style: TextStyle(
                                                    color: Colors.blue,
                                                  )),
                                            ),
                                            Container(
                                              padding: EdgeInsets.symmetric(
                                                  vertical: 1),
                                              // padding: EdgeInsets.only(top: 2),
                                              child: Text(widget.usernameAcc,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  style: TextStyle(
                                                    color: Colors.blue,
                                                  )),
                                            ),
                                            Container(
                                              padding: EdgeInsets.symmetric(
                                                  vertical: 1),
                                              child: Text(widget.usernameAcc,
                                                  textAlign: TextAlign.end,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  style: TextStyle(
                                                    color: Colors.grey,
                                                  )),
                                            )
                                          ],
                                        )),
                                    Expanded(
                                        flex: 2,
                                        child: IconButton(
                                          color: Colors.grey,
                                          icon: Icon(Icons.keyboard_arrow_down),
                                          onPressed: () {},
                                        ))
                                  ],
                                ),
                              ),
                              Expanded(
                                  flex: 4,
                                  child: IconButton(
                                    color: Colors.grey,
                                    icon: Icon(Icons.keyboard_arrow_down),
                                    onPressed: () {},
                                  ))
                            ]),
                      ),
                    ),
                  )
                ],
              ),
            ),
            buildAkun(context),
            SizedBox(
              height: 32,
            ),
            Container(
              padding: EdgeInsets.only(right: 16, left: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Service'),
                  Image.asset('assets/images/Vector 1.png'),
                ],
              ),
            ),
            buildMenu(context),
          ],
        ),
      ),
    );
  }

  buildMenu(context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Wrap(
        crossAxisAlignment: WrapCrossAlignment.center,
        children: <Widget>[
          ISTMenuContainer(
            onTap: () {},
            image: Image.asset(
              'assets/images/Group 73.png',
              width: 50,
            ),
            // color: Colors.grey,
            text: 'test',
          ),
          ISTMenuContainer(
            onTap: () {},
            image: Image.asset(
              'assets/images/Group 73.png',
              width: 50,
            ),
            text: 'test',
          ),
          ISTMenuContainer(
            onTap: () {},
            image: Image.asset(
              'assets/images/Group 73.png',
              width: 50,
            ),
            // color: Colors.grey,
            text: 'test',
          ),
          ISTMenuContainer.none(
            onTap: () {},
            image: Image.asset(
              'assets/images/Group 73.png',
              width: 50,
            ),
            // color: Colors.grey,
            text: 'test',
          ),
          ISTMenuContainer(
            onTap: () {},
            image: Image.asset(
              'assets/images/Group 73.png',
              width: 50,
            ),
            // color: Colors.grey,
            text: 'test',
          ),
          ISTMenuContainer(
            onTap: () {},
            image: Image.asset(
              'assets/images/Group 73.png',
              width: 48,
            ),
            text: 'test',
          ),
        ],
      ),
    );
  }
}

buildAkun(context) {
  return Column(
    children: <Widget>[
      SizedBox(height: 8),
      Container(
          padding: EdgeInsets.only(left: 16, right: 14),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'Promo',
                style: TextStyle(
                  color: Colors.blue,
                  fontFamily: 'Poppins',
                ),
              ),
            ],
          )),
      SizedBox(
        height: 8,
      ),
      Container(
        height: 150,
        width: 500,
        child: ListView(
          padding: EdgeInsets.only(right: 8, left: 8),
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            Container(
              color: Colors.pink,
              child: Text('weqweqweqw'),
            ),
            SizedBox(
              width: 20,
            ),
            Container(
              color: Colors.pink,
              child: Text('weqweqweqw'),
            ),
            SizedBox(
              width: 20,
            ),
            Container(
              color: Colors.pink,
              child: Text('weqweqweqw'),
            ),
            SizedBox(
              width: 20,
            ),
            Container(
              color: Colors.pink,
              child: Text('weqweqweqw'),
            ),
            SizedBox(
              width: 20,
            ),
            Container(
              color: Colors.pink,
              child: Text('weqweqweqw'),
            ),
            SizedBox(
              width: 20,
            ),
            Container(
              color: Colors.pink,
              child: Text('weqweqweqw'),
            ),
          ],
        ),
      ),
      SizedBox(height: 8),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Divider(thickness: 1),
      ),
    ],
  );
}

class ISTMenuContainer extends StatelessWidget {
  ISTMenuContainer(
      {Key key,
      @required this.onTap,
      @required this.image,
      @required this.text,
      this.color = Colors.black})
      : super(key: key);

  ISTMenuContainer.primary(
      {Key key,
      @required this.onTap,
      @required this.image,
      @required this.text,
      this.color = Colors.green})
      : super(key: key);

  ISTMenuContainer.white(
      {Key key,
      @required this.onTap,
      @required this.image,
      @required this.text,
      this.color = Colors.white})
      : super(key: key);

  ISTMenuContainer.none(
      {Key key,
      @required this.onTap,
      @required this.image,
      @required this.text,
      this.color = null})
      : super(key: key);

  final GestureTapCallback onTap;
  final Image image;
  final String text;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 8),
      width: (MediaQuery.of(context).size.width - 16) / 3,
      child: Material(
        color: Colors.transparent,
        shadowColor: Colors.transparent,
        borderRadius: BorderRadius.circular(10),
        child: InkWell(
          focusColor: Colors.transparent,
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          enableFeedback: false,
          onTap: onTap,
          child: Container(
              padding: EdgeInsets.symmetric(horizontal: 4),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image(
                    image: image.image,
                    width: image.width == null ? 50 : image.width,
                    color: color == null ? null : color,
                  ),
                  Text(
                    text,
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        color: color == null ? Colors.black : color,
                        fontSize: Theme.of(context).textTheme.caption.fontSize),
                    textAlign: TextAlign.center,
                  )
                ],
              )),
        ),
      ),
    );
  }
}
