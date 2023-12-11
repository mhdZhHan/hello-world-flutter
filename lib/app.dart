import 'package:flutter/material.dart';

// import './widgets/container.dart';
// import './widgets/sigleChildLayouts.dart';
// import './widgets/multiChildLayouts.dart';
// import './widgets/stackWidget.dart';
// import './widgets/imageWidget.dart';
import './widgets/buttons.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Hello World",
      home: Scaffold(
        backgroundColor: Colors.teal,
        appBar: AppBar(
          backgroundColor: Colors.pink,
          elevation: 10,
          title: Text('Hello world'),
          centerTitle: true,
          // leading: IconButton(
          //   onPressed: () {
          //     print("Leading button clicked");
          //   },
          //   icon: Icon(Icons.menu),
          // ),
          actions: <Widget>[
            IconButton(
              onPressed: () {
                print("Icon one");
              },
              icon: Icon(Icons.confirmation_num),
            ),
            IconButton(
              onPressed: () {
                print("Icon one");
              },
              icon: Icon(Icons.chair),
            ),
          ],
        ),

        floatingActionButton: IconButton(
          onPressed: null,
          icon: Icon(Icons.add_alert),
        ),

        drawer: Drawer(
          child: ListView(
            children: <Widget>[
              DrawerHeader(
                decoration: BoxDecoration(color: Colors.pinkAccent),
                child: Text("Drawer header"),
              ),
              ListTile(
                leading: Icon(Icons.favorite),
                trailing: Icon(Icons.arrow_forward_ios),
                title: Text("Favorite"),
                onTap: () {
                  print("favorites");
                },
              ),
              ListTile(
                leading: Icon(Icons.android),
                title: Text("Apps"),
                onTap: () {
                  print("apps");
                },
              ),
            ],
          ),
        ),
        // body: Center(
        //   // child: ContainerWidget(),
        //   // child: PaddingWidget(),
        //   child: CenterWidget(),
        // ),

        // body: SizedBoxWidget(),
        // body: AlignWidget(),

        // ===== MULTI CHILD WIDGETS =====
        // body: RowWidget(),
        // body: ColumnWidget(),
        // body: ListViewWidget(),
        // body: GridViewWidget(),
        // body: StackWidget(),
        // body: StackWidgetWithPositioned(),
        // body: ImageWidget(),
        // body: TextButtonWidget(),
        body: OutlinedButtonWidget(),
      ),
    );
  }
}
