import 'package:flutter/material.dart';

// import './widgets/container.dart';
// import './widgets/sigleChildLayouts.dart';
import './widgets/multiChildLayouts.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Hello World",
      home: Scaffold(
        // body: Center(
        //   // child: ContainerWidget(),
        //   // child: PaddingWidget(),
        //   child: CenterWidget(),
        // ),

        // body: SizedBoxWidget(),
        // body: AlignWidget(),

        // ===== MULTI CHILD WIDGETS =====
        // body: RowWidget(),
        body: ColumnWidget(),
      ),
    );
  }
}
