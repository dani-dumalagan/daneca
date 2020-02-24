import 'package:flutter/material.dart';

class HeaderCanteen extends StatelessWidget { // ------> for CANTEEN HEADERS
  final String canteenImage;
  final String canteenName;

  HeaderCanteen({this.canteenImage, this.canteenName});

  @override
  Widget build(BuildContext context) {
    return new SliverAppBar(
              pinned: true,
              // shape: new RoundedRectangleBorder(
              //    borderRadius: new BorderRadius.circular(20.0)
              // ),
              expandedHeight: 200.0,
              titleSpacing: 0.0,
              elevation: 0.0,
              flexibleSpace: Stack(
                children: <Widget>[
                  new Positioned.fill(
                      child: Image.asset(
                    canteenImage,
                    fit: BoxFit.cover,
                  )),
                  new Container(
                    color: Colors.black.withOpacity(.5),
                    child: new Center(
                      child: new Text(
                      canteenName,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25.0,
                        fontFamily: "Quicksand",
                        fontWeight: FontWeight.w100
                      ),)
                    )
                      )
                ],
              ),
            );
}
}

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new SafeArea(
      child: new Container(
        color: Colors.white,
        // height: 300.0,
        child: new CustomScrollView(
          slivers: <Widget>[
// // ----------> SliverAppBar
            new SliverAppBar(
              actions: <Widget>[
                new IconButton(
                    icon: new Icon(
                      Icons.settings,
                      color: Colors.yellow[100], // for yellow appBar
                      // color: Colors.yellow[600], // for white appBar
                    ),
                    // padding: EdgeInsets.only(top: 5.0),
                    alignment: Alignment.center,
                    padding: EdgeInsets.only(top: 5.0),
                    onPressed: null)
              ],
              pinned: true,
              // shape: new RoundedRectangleBorder(
              //    borderRadius: new BorderRadius.circular(20.0)
              // ),
              expandedHeight: 200.0,
              titleSpacing: 0.0,
              elevation: 0.0,
              // backgroundColor: Colors.transparent,
              backgroundColor: Colors.yellow[700].withOpacity(0.96),
              // backgroundColor: Colors.white10, // ------> transparent appBar
              // backgroundColor: Colors.yellow[700], // ------> yellow appBar
              // backgroundColor: Colors.white, // ------> white appBar
              flexibleSpace: new FlexibleSpaceBar(
                background: Image.asset(
                  "assets/images/picscaon.jpg",
                  fit: BoxFit.cover,
                ),
                centerTitle: true,
                titlePadding: new EdgeInsets.only(top: 10.0),
                title: new Container(
                  child: new Text(
                    "sa'ncaon",
                    style: new TextStyle(
                        color: Colors.white, // ------> white text
                        // color: Colors.yellow[700], // ------> yellow text
                        // color: Colors.black87,
                        fontFamily: "Quicksand",
                        fontSize: 30.0,
                        fontWeight: FontWeight.w100),
                  ),
                  padding: EdgeInsets.only(bottom: 10.0),
                ),
              ),
            ),
            new SliverList( // -------------------------------------------> Sliver FIX !!
                delegate: new SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return new Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        border: Border.all()
                      ),
                      height: 100.0,
                      child: new Center(
                        child: new Text(
                          "select a canteen",
                          style: new TextStyle(
                              color: Colors.black,
                              // color: Colors.black87,
                              // fontFamily: "Bebas-Neue",
                              fontFamily: "Quicksand",
                              fontSize: 25.0,
                              fontWeight: FontWeight.w100,
                              letterSpacing: 5.0,
                              decoration: TextDecoration.none),
                        ),
                      ),
                      margin: EdgeInsets.all(20.0),
                    );
              },
              childCount: 1, // howMany
            )),
// __________________________________________________________________________________________________________________ //
            new HeaderCanteen(canteenImage: 'assets/images/canteen.jpg', canteenName: "Bunzel Canteen",),
            new SliverGrid(
              gridDelegate: new SliverGridDelegateWithMaxCrossAxisExtent(
                // ------> size&Positoning
                maxCrossAxisExtent: 200.0, // overallGridSpaceHeight
                mainAxisSpacing: 10.0, // betweenRows
                crossAxisSpacing: 0.0, // betweenColumns
                childAspectRatio: 1.0, // widthPerMainAxisSpacing
              ),
              delegate: new SliverChildBuilderDelegate(
                // loopLike
                (BuildContext context, int index) {
                  return new Container(
                    alignment: Alignment.center,
                    color: Colors.yellow[100 * (index % 9)],
                    // child: new Text('ello $index'),
                    // child: Icon(Icons.thumb_down),
                    // child: Image.asset('assets/images/burger.jpg'),
                  );
                },
                childCount: 10, // howMany
              ),
            ),
// __________________________________________________________________________________________________________________ //
           HeaderCanteen(canteenImage: 'assets/images/canteen2.jpg', canteenName: "SMED",),
            new SliverGrid(
              gridDelegate: new SliverGridDelegateWithMaxCrossAxisExtent(
                // ------> size&Positoning
                maxCrossAxisExtent: 200.0, // overallGridSpaceHeight
                mainAxisSpacing: 10.0, // betweenRows
                crossAxisSpacing: 0.0, // betweenColumns
                childAspectRatio: 2.0, // widthPerMainAxisSpacing
              ),
              delegate: new SliverChildBuilderDelegate(
                // loopLike
                (BuildContext context, int index) {
                  return new Container(
                    alignment: Alignment.center,
                    color: Colors.yellow[100 * (index % 9)],
                    // child: new Text('ello $index'),
                    // child: Icon(Icons.thumb_down),
                    // child: Image.asset('assets/images/burger.jpg'),
                  );
                },
                childCount: 10, // howMany
              ),
            ),
          ],
        ), // ------> CustomScrollView (x)
      ), // ------> Container (x)
    ); // ------> SafeArea (x)
  } // ------> BuildContext (x)
} // ------> Stateless (x)
