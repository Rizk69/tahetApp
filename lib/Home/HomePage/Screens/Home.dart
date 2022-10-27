import 'package:flutter/material.dart';
import 'package:tahetapp/Home/HomePage/Screens/HomeScreens.dart';
import 'package:tahetapp/Home/HomePage/Widget/DrawerClick.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = 'home';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    int selectedindex = 0;

    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        elevation: 4,
        backgroundColor: Colors.white,
        leading: Padding(
          padding: EdgeInsets.only(left: 10),
          child: Image.asset('lib/Asset/logo (1).png'),
        ),
        actions: [
          InkWell(
            onTap: () {},
            child: Stack(
              alignment: AlignmentDirectional.center,
              children: [
                const Positioned(
                    child: ImageIcon(
                        color: Color(0XFF4B2771),
                        AssetImage('lib/Asset/Icons/svgexport-6 (28) 1.png'))),
                Positioned(
                  top: 7,
                  right: 0,
                  child: Container(
                    alignment: AlignmentDirectional.center,
                    height: 17,
                    width: 17,
                    decoration: BoxDecoration(
                      color: const Color(0XFFF18F15),
                      borderRadius: BorderRadius.circular(80),
                    ),
                    child: const Text(
                      '2',
                      style: TextStyle(color: Colors.white, fontSize: 14),
                    ),
                  ),
                ),
              ],
            ),
          ),
          InkWell(
            onTap: () {},
            child: IconButton(
              icon: const ImageIcon(
                AssetImage('lib/Asset/svgexport-6 (2) 1.png'),
                color: Color(0XFF4B2771),
              ),
              onPressed: () {
                scaffoldKey.currentState?.openDrawer();
              },
            ),
          )
        ],
      ),
      drawer: Drawer(
        child:DrawerClick()

      ),

      drawerEnableOpenDragGesture: true,
      body:  tabs[selectedindex],//HomeScreen(),
      bottomNavigationBar: BottomAppBar(
        elevation: 0.3,
        notchMargin: 8,
        color: Colors.white,
        shape: CircularNotchedRectangle(),
        clipBehavior: Clip.antiAlias,
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.black,
          backgroundColor: Color(0xFFC4C4C4),
          currentIndex: selectedindex,
          onTap: (index) {
            setState(() {
              selectedindex = index;
            });
          },
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: [
            BottomNavigationBarItem(
              label: 'Lost',
              backgroundColor: Colors.grey,
              // icon: ImageIcon(
              //   AssetImage('lib/Asset/svgexport-6 (5) 1.png'),
              //   size: 25,
              // ),

              icon: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ImageIcon(
                    AssetImage('lib/Asset/svgexport-6 (5) 1.png'),
                    size: 25,
                  ),
                  SizedBox(
                    width: 3,
                  ),
                  Text('Lost')
                ],
              ),
            ),
            BottomNavigationBarItem(
              label: '',
              icon: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ImageIcon(
                    AssetImage('lib/Asset/svgexport-6 (4) 1.png'),
                    size: 25,
                  ),
                  SizedBox(
                    width: 3,
                  ),
                  Text('Found')
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0XFF4B2771),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(50))),
        onPressed: () {

        },
        child: ImageIcon(
          AssetImage('lib/Asset/Vector (2).png'),
          size: 25,
        ),

      ),
    );
  }

  List<Widget> tabs = [HomeScreens(), HomeScreens()];


}
