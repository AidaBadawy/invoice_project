// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'app_drawer.dart';

/// A responsive scaffold for our application.
/// Displays the navigation drawer alongside the [Scaffold] if the screen/window size is large enough
class AppScaffold extends StatelessWidget {
  AppScaffold(
      {@required this.body,
      @required this.pageTitle,
      @required this.icon,
      this.displayTwo = false,
      this.displayThree = false,
      this.pageTitleTwo,
      this.displayButton = false,
      this.fab,
      this.docId,
      this.name,
      this.pageTitleThree,
      @required this.backgroundColor,
      Key key})
      : super(key: key);

  final Widget body;
  final String pageTitle;
  final String pageTitleTwo;
  final String pageTitleThree;
  final IconData icon;
  final Widget fab;
  final bool displayTwo;
  final bool displayThree;
  final bool displayButton;
  final String docId;
  final String name;
  final Color backgroundColor;

  final TextEditingController searchController = TextEditingController();
  final String selectedLetter = '';
  final letters = 'abcdefghijklmnopqrstuvwxyz'.split('');

  @override
  Widget build(BuildContext context) {
    final bool displayMobileLayout = MediaQuery.of(context).size.width < 600;

    return Row(
      children: [
        if (!displayMobileLayout)
          const AppDrawer(
            permanentlyDisplay: true,
          ),
        Expanded(
          child: Scaffold(
            backgroundColor: backgroundColor,
            appBar: AppBar(
              backgroundColor: Colors.blueGrey.shade50,
              // when the app isn't displaying the mobile version of app, hide the menu button that is used to open the navigation drawer
              automaticallyImplyLeading: displayMobileLayout,
              title: displayTwo
                  ? Row(
                      children: [
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text(pageTitleTwo,
                              style:
                                  TextStyle(color: Colors.blue, fontSize: 20)),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.grey,
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        displayThree
                            ? TextButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: Text(pageTitle,
                                    style: TextStyle(
                                        color: Colors.blue, fontSize: 20)),
                              )
                            : Text(pageTitle,
                                style: TextStyle(color: Colors.grey)),
                        displayThree ? SizedBox(width: 8) : Container(),
                        displayThree
                            ? Icon(
                                Icons.arrow_forward_ios,
                                color: Colors.grey,
                              )
                            : Container(),
                        displayThree
                            ? Text(
                                pageTitleThree,
                                style:
                                    TextStyle(color: Colors.blue, fontSize: 20),
                              )
                            : Container(),
                      ],
                    )
                  : Text(
                      pageTitle,
                      style: TextStyle(color: Colors.black),
                    ),
              leading: Icon(icon, color: Colors.blue),
              actions: [
                displayButton
                    ? Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: ElevatedButton(
                            onPressed: () {}, child: Text('Add Treatment')),
                      )
                    : Container(),
                Padding(
                  padding: EdgeInsets.all(8),
                  child: IconButton(
                    icon: Icon(Icons.notifications, color: Colors.blue),
                    onPressed: () {},
                  ),
                )
              ],
            ),
            drawer: displayMobileLayout
                ? const AppDrawer(
                    permanentlyDisplay: false,
                  )
                : null,
            body: body,
            floatingActionButton: fab,
          ),
        ),
      ],
    );
  }
}
