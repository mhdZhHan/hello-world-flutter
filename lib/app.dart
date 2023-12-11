import 'package:flutter/material.dart';

// import './widgets/container.dart';
// import './widgets/singleChildLayouts.dart';
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
          // body: OutlinedButtonWidget(),

          // ====== Text widget =============
          // body: Center(
          //   child: Text(
          //     "Hello World",
          //     style: TextStyle(
          //       color: Colors.white,
          //       backgroundColor: Colors.black,
          //       fontSize: 35,
          //       fontWeight: FontWeight.w700,
          //       fontStyle: FontStyle.italic,
          //       letterSpacing: 2,
          //       wordSpacing: 4,
          //       fontFamily: "Manjari Regular",
          //     ),
          //   ),
          // ),

          // ====== TextField widget =============
          body: Container(
            margin: EdgeInsets.all(20),
            child: TextField(
              // keyboardType: TextInputType.text,
              keyboardType: TextInputType.multiline,
              // keyboardType: TextInputType.number,
              onChanged: (String inputValue) {
                print(inputValue);
              },
              onTap: () {
                print("text input box activated");
              },
              enabled: true,
              maxLines: 10,
              // controller: TextEditingController(text: "Default value"),

              /// =========
              decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 2, color: Colors.yellow),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      bottomRight: Radius.circular(20),
                    ),
                  ),

                  // ========
                  disabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 2, color: Colors.blue),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      bottomRight: Radius.circular(20),
                    ),
                  ),

                  // ==========
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 2, color: Colors.pink),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      bottomRight: Radius.circular(20),
                    ),
                  ),
                  icon: Icon(
                    Icons.message,
                    color: Colors.pink,
                    size: 40,
                  ),
                  suffixIcon: Icon(
                    Icons.backspace,
                    color: Colors.pink,
                    size: 20,
                  ),
                  suffixText: "Ok",
                  contentPadding: EdgeInsets.all(20),
                  labelText: "Message",
                  labelStyle: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                  hintText: "Enter your message",
                  hintStyle: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                  helperText: "Thank you for your replay."),
            ),
          )),
    );
  }
}
