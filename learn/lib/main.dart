import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Home Page",style:
          TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            // wordSpacing: 3,
            fontSize: 24,
          ),
          ),
          backgroundColor: Colors.grey.shade500,
        ),


        body: Stack(
          children: [
            Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("asset/bg.jpeg"),
                fit: BoxFit.cover,
              )
            ),

            ),

            Center(
            child: Column(
              children: [
                SizedBox(
                  height: 40,
                ),

                Container(
                 child: Center(
                   child: Text("Box 1",style: TextStyle(fontSize: 24),),
                 ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16.0),
                    image: DecorationImage(
                      image:AssetImage("asset/r1.jpeg"),
                      fit: BoxFit.cover
                    ),
                    color: Colors.green,
                  ),
                  height: 100,
                  width: 350,
                ),

                SizedBox(
                  height: 40,
                ),

                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Colors.orangeAccent,
                    image: DecorationImage(
                      image: AssetImage("asset/r2.jpeg"),
                      fit: BoxFit.cover,
                    )
                  ),
                  height: 100,
                  width: 350,
                ),

                SizedBox(
                  height: 40,
                ),

                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Colors.blue,
                    image: DecorationImage(
                      image: AssetImage("asset/r3.jpeg"),
                      fit: BoxFit.cover
                    )
                  ),
                  height: 100,
                  width: 350,

                )
              ],
            )

          ),
          ],
        ),

        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.green,
          elevation: 10,
          child: Icon(
            Icons.add,
            color: Colors.white,
          ),
          onPressed: (){},

        ),

        // drawer: Drawer(
        //   child: ListView(
        //     children: const <Widget>[
        //       DrawerHeader(
        //         decoration: BoxDecoration(
        //           color: Colors.green,
        //         ),
        //         child: Text('drawer',
        //         style: TextStyle(
        //           color: Colors.white,
        //           fontSize: 24,
        //         ),
        //         ),
        //       ),
        //       ListTile(
        //         title: Text('item1'),
        //         leading: Icon(Icons.people,)
        //       ),
        //       ListTile(
        //         title: Text('item 2'),
        //         leading: Icon(Icons.mail),
        //       )
        //     ],
        //   ),
        // ),

        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.all(0),
            children: [
              const DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.green,
                ),
                child: UserAccountsDrawerHeader(
                  decoration: BoxDecoration(color: Colors.green),
                  accountName: Text("Vishal",
                  style: TextStyle(fontSize: 18)
                  ),
                  accountEmail: Text('Vishal@gmail.com'),
                  currentAccountPictureSize: Size.square(40),
                  currentAccountPicture: CircleAvatar(
                    backgroundColor: Color.fromARGB(255, 165, 255, 137),
                    child: Text("V",style: TextStyle(fontSize: 30,color: Colors.blue),
                    ),
                  ),
                ),
              ),
              ListTile(
                leading: const Icon(Icons.person),
                title: const Text(' My Profile '),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Icon(Icons.book),
                title: const Text(' My Course '),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Icon(Icons.workspace_premium),
                title: const Text(' Go Premium '),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Icon(Icons.video_label),
                title: const Text(' Saved Videos '),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Icon(Icons.edit),
                title: const Text(' Edit Profile '),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Icon(Icons.logout),
                title: const Text('LogOut'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),



        bottomNavigationBar: BottomNavigationBar(
          currentIndex: 0,
          fixedColor: Colors.grey,
          items: const [
            BottomNavigationBarItem( label:"Home",icon: Icon(Icons.home)),
            BottomNavigationBarItem(label: "Search", icon: Icon(Icons.search)),
            BottomNavigationBarItem(label:"Chat", icon : Icon(Icons.chat)),
          ],
        ),

      ),
    );
  }
}

