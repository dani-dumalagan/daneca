import 'package:flutter/material.dart';
import 'collapsing.dart';

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
            new SliverList(
                delegate: new SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return new Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        border: Border.all()
                      ),
                      height: 60.0,
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
            new SliverAppBar(
              pinned: true,
              // shape: new RoundedRectangleBorder(
              //    borderRadius: new BorderRadius.circular(40.0)
              // ),
              expandedHeight: 200.0,
              titleSpacing: 0.0,
              elevation: 0.0,
              // backgroundColor: Colors.transparent,
              backgroundColor: Colors.yellow[100].withOpacity(0.9),
              // backgroundColor: Colors.white10, // ------> transparent appBar
              // backgroundColor: Colors.yellow[700], // ------> yellow appBar
              // backgroundColor: Colors.white, // ------> white appBar
              flexibleSpace: new FlexibleSpaceBar(
                background: Image.asset(
                  "assets/images/picsafad.jpg",
                  fit: BoxFit.cover,
                ),
                centerTitle: true,
                titlePadding: new EdgeInsets.only(top: 10.0),
                title: new Container(
                  child: new Text(
                    "Bunzel Canteen",
                    style: new TextStyle(
                        color: Colors.black87, // ------> white text
                        // color: Colors.yellow[700], // ------> yellow text
                        // color: Colors.black87,
                        fontFamily: "Quicksand",
                        fontSize: 30.0,
                        fontWeight: FontWeight.w100),
                  ),
                  padding: EdgeInsets.only(bottom: 10.0, top: 0.0),
                ),
              ),
            ),
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
            new SliverFixedExtentList( // ------> list
              itemExtent: 80.0, // itemHeight
              delegate: new SliverChildBuilderDelegate( // loopLike
                (BuildContext context, int index) {
                  return new Container(
                    alignment: Alignment.center,
                    color: Colors.lightBlue[100 * (index % 9)],
                    child: new Text('List Item ${index+1}'),
                  );
                },
                childCount: 3
              ),
            ),
// __________________________________________________________________________________________________________________ //
            new SliverAppBar(
              pinned: true,
              // shape: new RoundedRectangleBorder(
              //    borderRadius: new BorderRadius.circular(40.0)
              // ),
              expandedHeight: 200.0,
              titleSpacing: 0.0,
              elevation: 0.0,
              // backgroundColor: Colors.transparent,
              backgroundColor: Colors.yellow[300].withOpacity(0.9),
              // backgroundColor: Colors.white10, // ------> transparent appBar
              // backgroundColor: Colors.yellow[700], // ------> yellow appBar
              // backgroundColor: Colors.white, // ------> white appBar
              flexibleSpace: new FlexibleSpaceBar(
                background: Image.asset(
                  "assets/images/picsafad.jpg",
                  fit: BoxFit.cover,
                ),
                centerTitle: true,
                titlePadding: new EdgeInsets.only(top: 10.0),
                title: new Container(
                  child: new Text(
                    "SAFAD",
                    style: new TextStyle(
                        color: Colors.black87, // ------> white text
                        // color: Colors.yellow[700], // ------> yellow text
                        // color: Colors.black87,
                        fontFamily: "Quicksand",
                        fontSize: 30.0,
                        fontWeight: FontWeight.w100),
                  ),
                  padding: EdgeInsets.only(bottom: 10.0, top: 0.0),
                ),
              ),
            ),
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
            new SliverFixedExtentList( // ------> list
              itemExtent: 80.0, // itemHeight
              delegate: new SliverChildBuilderDelegate( // loopLike
                (BuildContext context, int index) {
                  return new Container(
                    alignment: Alignment.center,
                    color: Colors.lightBlue[100 * (index % 9)],
                    child: new Text('List Item ${index+1}'),
                  );
                },
                childCount: 3
              ),
            ),
          ],
        ), // ------> CustomScrollView (x)
      ), // ------> Container (x)
    ); // ------> SafeArea (x)
  } // ------> BuildContext (x)
} // ------> Stateless (x)
