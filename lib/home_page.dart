import 'package:flutter/material.dart';
import 'package:my_app/app_controlller.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<StatefulWidget> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
                currentAccountPicture: ClipRRect(
                  borderRadius: BorderRadius.circular(40),
                  child: Image.network(
                      "https://avatars.githubusercontent.com/u/44899286?v=4"),
                ),
                accountName: Text("Luiz Eduardo"),
                accountEmail: Text("lepessoa38@gmail.com")),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("Configurações"),
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text("Sair"),
              onTap: () {
                Navigator.of(context).pushReplacementNamed("/");
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(title: Text("Homepage"), actions: [CustomSwitch()]),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: ListView(
          children: [
            Container(height: 20),
            Text(
              "Contador: $counter",
              style: TextStyle(fontSize: 30.0),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          setState(() {
            counter++;
          });
        },
      ),

      /*
      body: GestureDetector(
          child: Center(
              child: Text(
            "Teste $counter",
            style: TextStyle(fontSize: 50.0),
          )),
          onTap: () {
            setState(() {
              counter++;
            });
            ;
          }),
      */
    );
  }
}

class CustomSwitch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Switch(
      value: AppController.instance.darkTheme,
      onChanged: (value) {
        AppController.instance.changeTheme();
      },
    );
  }
}
