import 'package:aastu_log_in/screens/homepage.dart';
import 'package:flutter/material.dart';

class LogInScreen extends StatelessWidget {
  const LogInScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width; 
    final isSmallScreen = screenWidth < 600;
    return Scaffold(
      appBar: AppBar(
        title: const Text('AASTU SIMIS'),
        leading: Image.asset("assets/images/aastu_logo.jpg"),
        backgroundColor: Colors.green,
        actions: [

            isSmallScreen
              ? PopupMenuButton(
                  icon: Icon(Icons.menu),
                  itemBuilder: (BuildContext context) {
                    return [
                      PopupMenuItem(
                        child: Text('About'),
                      ),
                      PopupMenuItem(
                        child: Text('Grades'),
                      ),
                      PopupMenuItem(
                        child: Text('Announcment'),
                      ),
                      PopupMenuItem(
                        child: Text('Home page'),
                      )
                    ];
                  })
           

              : Row(
              children: [
                TextButton(
                  onPressed: () {},
                  child: Text('About'),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text('Grades'),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text('Announcment'),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text('Home page'),
                )
              ],
            )
            

            
       
        ],
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Image.asset("assets/images/aastu_logo.jpg"),
              ),
              Text("Log in to your account",
                  style: TextStyle(color: Colors.green)),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Text(
                    "Username",
                    style: TextStyle(color: Colors.green),
                  ),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(border: OutlineInputBorder()),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Text(
                    "Password",
                    style: TextStyle(color: Colors.green),
                  ),
                  Expanded(
                    child: TextField(
                      keyboardType: TextInputType.visiblePassword,
                      decoration: InputDecoration(border: OutlineInputBorder()),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  child: Text("login"),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Homepage()));
                  })
            ],
          ),
        ),
      ),
    );
  }
}
