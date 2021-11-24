// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import '../constants/page_titles.dart';
import '../constants/route_names.dart';
import 'app_route_observer.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

/// The navigation drawer for the app.
/// This listens to changes in the route to update which page is currently been shown
class AppDrawer extends StatefulWidget {
  const AppDrawer({@required this.permanentlyDisplay, Key key})
      : super(key: key);

  final bool permanentlyDisplay;

  @override
  _AppDrawerState createState() => _AppDrawerState();
}

class _AppDrawerState extends State<AppDrawer> with RouteAware {
  String _selectedRoute;
  AppRouteObserver _routeObserver;
  @override
  void initState() {
    super.initState();
    _routeObserver = AppRouteObserver();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _routeObserver.subscribe(this, ModalRoute.of(context));
  }

  @override
  void dispose() {
    _routeObserver.unsubscribe(this);
    super.dispose();
  }

  @override
  void didPush() {
    _updateSelectedRoute();
  }

  @override
  void didPop() {
    _updateSelectedRoute();
  }

  @override
  Widget build(BuildContext context) {
    // final user = Provider.of<UserModel>(context);

    return Drawer(
      child: Row(
        children: [
          Expanded(
            child: Column(
              children: [
                Expanded(
                  child: ListView(
                    padding: EdgeInsets.zero,
                    children: [
                      ListTile(
                        leading: Icon(Octicons.home),
                        title: Text('Invoice App',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        subtitle: Text('Because We Can'),
                        // trailing: Icon(Octicons.settings),
                      ),
                      SizedBox(height: 20),
                      ListTile(
                        selectedTileColor: Colors.grey[200],
                        leading: const Icon(MaterialIcons.data_usage),
                        title: const Text(
                          PageTitles.dashboard,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        onTap: () async {
                          await _navigateTo(context, RouteNames.dashboard);
                        },
                        selected: _selectedRoute == RouteNames.dashboard,
                      ),
                      ListTile(
                          selectedTileColor: Colors.grey[200],
                          leading: const Icon(Feather.file_text),
                          title: const Text(
                            PageTitles.bill,
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          onTap: () async {
                            await _navigateTo(context, RouteNames.bill);
                          },
                          selected: _selectedRoute == RouteNames.bill),
                      ListTile(
                        selectedTileColor: Colors.grey[200],
                        leading: const Icon(FontAwesome5Solid.file_invoice),
                        title: const Text(
                          PageTitles.invoice,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        onTap: () async {
                          await _navigateTo(context, RouteNames.invoice);
                        },
                        selected: _selectedRoute == RouteNames.invoice,
                      ),
                      ListTile(
                        selectedTileColor: Colors.grey[200],
                        leading:
                            const Icon(FontAwesome5Solid.file_invoice_dollar),
                        title: const Text(
                          PageTitles.estimate,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        onTap: () async {
                          await _navigateTo(context, RouteNames.estimate);
                        },
                        selected: _selectedRoute == RouteNames.estimate,
                      ),
                    ],
                  ),
                ),
                Container(
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.grey)),
                  child: ExpansionTile(
                    leading: Icon(Octicons.person),
                    title: Text('Meshari Aldossary'),
                    subtitle: Text('Agent'),
                    children: [
                      ListTile(
                        selectedTileColor: Colors.grey[200],
                        leading:
                            const Icon(FontAwesome5Solid.file_invoice_dollar),
                        title: const Text(
                          PageTitles.account,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        onTap: () async {
                          await _navigateTo(context, RouteNames.account);
                        },
                        selected: _selectedRoute == RouteNames.account,
                      ),
                       ListTile(
                        selectedTileColor: Colors.grey[200],
                        leading:
                            const Icon(FontAwesome5Solid.file_invoice_dollar),
                        title: const Text(
                          PageTitles.subscription,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        onTap: () async {
                          await _navigateTo(context, RouteNames.subscription);
                        },
                        selected: _selectedRoute == RouteNames.subscription,
                      ),
                       ListTile(
                        selectedTileColor: Colors.grey[200],
                        leading:
                            const Icon(FontAwesome5Solid.file_invoice_dollar),
                        title: const Text(
                          PageTitles.billing,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        onTap: () async {
                          await _navigateTo(context, RouteNames.billing);
                        },
                        selected: _selectedRoute == RouteNames.billing,
                      ),
                      ListTile(
                        tileColor: Colors.red,
                        leading:
                            const Icon(MaterialIcons.logout, color: Colors.white),
                        title: const Text(
                          'Logout',
                          style: TextStyle(color: Colors.white),
                        ),
                        onTap: () async {
                          await _navigateTo(context, RouteNames.home);
                        },
                        selected: _selectedRoute == RouteNames.home,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          if (widget.permanentlyDisplay)
            const VerticalDivider(
              width: 1,
            ),
        ],
      ),
    );
  }

  /// Closes the drawer if applicable (which is only when it's not been displayed permanently) and navigates to the specified route
  /// In a mobile layout, the a modal drawer is used so we need to explicitly close it when the user selects a page to display
  Future<void> _navigateTo(BuildContext context, String routeName) async {
    if (widget.permanentlyDisplay) {
      Navigator.pop(context);
    }
    await Navigator.pushNamed(context, routeName);
  }

  void _updateSelectedRoute() {
    setState(() {
      _selectedRoute = ModalRoute.of(context).settings.name;
    });
  }
}
