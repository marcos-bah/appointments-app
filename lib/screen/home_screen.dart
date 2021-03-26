import 'package:appointments/src/widgets.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var _list = [
    {
      "name": "Chris",
      "date": "09 Mar 2021, 8am - 10am",
    },
    {
      "name": "Chris",
      "date": "09 Mar 2021, 8am - 10am",
    },
    {
      "name": "Chris",
      "date": "09 Mar 2021, 8am - 10am",
    },
    {
      "name": "Chris",
      "date": "09 Mar 2021, 8am - 10am",
    },
  ];
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: const EdgeInsets.all(1),
                    decoration: BoxDecoration(
                      color: Color(0xFFdfe5f4),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    child: Center(
                      child: IconButton(
                        padding: const EdgeInsets.all(0),
                        onPressed: () {},
                        icon: Icon(
                          Icons.menu_sharp,
                          color: Color(0xFF94a2ce),
                          size: 40,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(1),
                    width: 45,
                    height: 45,
                    child: CircleAvatar(
                      backgroundImage: AssetImage("assets/images/profile.jpg"),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                "Welcom Back!",
                style: TextStyle(
                  color: Color(0xFF55568d),
                  fontWeight: FontWeight.w500,
                  fontSize: 12,
                ),
              ),
              Text(
                "Dr. Jenny Wilson",
                style: TextStyle(
                  color: Color(0xFF00003d),
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 15, bottom: 20),
                    padding: const EdgeInsets.all(10),
                    width: w / 2.3,
                    height: 85,
                    decoration: BoxDecoration(
                      color: Color(0xFF364e9e),
                      borderRadius: BorderRadius.all(
                        Radius.circular(15),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xFF364e9e).withOpacity(0.35),
                          offset: Offset(0, 10.0),
                          blurRadius: 10,
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.add,
                          size: 28,
                          color: Colors.white,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "New Patient",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 15, bottom: 20),
                    padding: const EdgeInsets.all(10),
                    width: w / 2.3,
                    height: 85,
                    decoration: BoxDecoration(
                      color: Color(0xFF0ec2ee),
                      borderRadius: BorderRadius.all(
                        Radius.circular(15),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xFF364e9e).withOpacity(0.35),
                          offset: Offset(0, 10.0),
                          blurRadius: 10,
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.fact_check,
                          size: 28,
                          color: Colors.white,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Existing Patients",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Text(
                "Your Appointments",
                style: TextStyle(
                  color: Color(0xFF55568d),
                  fontWeight: FontWeight.w500,
                  fontSize: 11,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: _list
                        .map<Widget>((e) =>
                            customListTile(name: e["name"], date: e["date"]))
                        .toList(),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(15.0),
          topRight: Radius.circular(15.0),
        ),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          currentIndex: 0,
          onTap: null,
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                size: 30,
              ),
              label: "",
              tooltip: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.insert_drive_file_outlined,
                size: 30,
              ),
              label: "",
              tooltip: "Documentos",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.chat_bubble,
                size: 30,
              ),
              label: "",
              tooltip: "Chat",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.notifications,
                size: 30,
              ),
              label: "",
              tooltip: "Notificações",
            ),
          ],
        ),
      ),
    );
  }
}
