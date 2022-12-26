import 'package:flutter/material.dart';

import '../data/grid_applications.dart';

class AppBasedDisplay extends StatefulWidget {
  const AppBasedDisplay({
    super.key,
    required this.mainColour,
    required this.subColour,
  });

  final Color mainColour;
  final Color subColour;

  @override
  State<AppBasedDisplay> createState() => _AppBasedDisplayState();
}

class _AppBasedDisplayState extends State<AppBasedDisplay> {
  var crossAxisSpacing = 10.0;
  var mainAxisSpacing = 10.0;

  final appBar = AppBar();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: widget.subColour,
      body: GridView.builder(
        shrinkWrap: true,
        itemCount: gridApplications.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: MediaQuery.of(context).size.width >
                    MediaQuery.of(context).size.height
                ? 6
                : 4,
            childAspectRatio: 1 / 1,
            crossAxisSpacing: crossAxisSpacing,
            mainAxisSpacing: mainAxisSpacing),
        itemBuilder: ((context, index) {
          return Padding(
            padding: const EdgeInsets.all(10.0),
            child: AspectRatio(
              aspectRatio: 1 / 1,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: MaterialButton(
                  onPressed: () => {},
                  color: widget.mainColour,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      FittedBox(
                        fit: BoxFit.fitWidth,
                        child: Text(
                          gridApplications[index].buttonText,
                          style: const TextStyle(
                            color: Color(0xffffffff),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        }),
      ),
      bottomNavigationBar: SizedBox(
        height: appBar.preferredSize.height,
        child: AppBar(
          backgroundColor: widget.subColour,
          shadowColor: widget.subColour,
          title: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.menu,
              color: widget.mainColour,
            ),
          ),
        ),
      ),
    );
  }
}
