import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
 runApp(MaterialApp(home: MainScreen(),));
}
class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: const Text("Contacts"),
      ),
      body: ListView(
        children:  [
          const SizedBox(
            height: 11,
          ),
          
          const SizedBox(
            height: 10,
          ),
          Card(
            child: ListTile(
              title: const Text("Peter"),
              //tileColor: Colors.grey,
              subtitle: const Text("7458741258"),
              trailing: Wrap(
                children: const [
                  Icon(Icons.sms_sharp,color: Colors.blue),
                  SizedBox(width: 30,),
                  Icon(Icons.phone,color: Colors.blue),
                ],
              ),
              leading: const CircleAvatar(
                radius:20,
                backgroundImage: NetworkImage(
                    "https://upload.wikimedia.org/wikipedia/commons/thumb/9/93/Google_Contacts_icon.svg/1200px-Google_Contacts_icon.svg.png"),
              ),
              //onTap: ,
            ),
          ),
          Card(
            child: ListTile(
              title: const Text("Paul"),
              //tileColor: Colors.grey,
              subtitle: const Text("7458965214"),
              trailing: Wrap(
                children: const [
                  Icon(Icons.sms_sharp,color: Colors.blue),
                  SizedBox(width: 30,),
                  Icon(Icons.phone,color: Colors.blue),
                ],
              ),
              leading: const CircleAvatar(
                radius:20,
                backgroundImage: NetworkImage(
                    "https://upload.wikimedia.org/wikipedia/commons/thumb/9/93/Google_Contacts_icon.svg/1200px-Google_Contacts_icon.svg.png"),
              ),
              //onTap: ,
            ),
          ),
            Card(
             child: ListTile(
              title: Text("Jacob"),
              //tileColor: Colors.grey,
               subtitle: Text("8954712563"),
               trailing: Wrap(
                children: const [
                  Icon(Icons.sms_sharp,color: Colors.blue),
                  SizedBox(width: 30,),
              Icon(Icons.phone,color: Colors.blue),
                ],
              ),
              leading: CircleAvatar(
                radius:20,
                backgroundImage: NetworkImage(
                    "https://upload.wikimedia.org/wikipedia/commons/thumb/9/93/Google_Contacts_icon.svg/1200px-Google_Contacts_icon.svg.png"),
              ),
              //onTap: ,
          ),
           ),
             Card(
             child: ListTile(
              title: Text("Ajo"),
              subtitle: Text("7452169874"),
              trailing: Wrap(
                children : const[
              Icon(Icons.sms_sharp,color: Colors.blue),
              SizedBox(width: 30,),
              Icon(Icons.phone,color: Colors.blue)
                ],
              ),
              leading: CircleAvatar(
              radius:20,
              backgroundImage: NetworkImage(
                    "https://upload.wikimedia.org/wikipedia/commons/thumb/9/93/Google_Contacts_icon.svg/1200px-Google_Contacts_icon.svg.png"),
              ),
              //onTap: ,
          ),
           ),
            Card(
              child:  ListTile(
              title: Text("Ram"),
              subtitle: Text("8974563214"),
              trailing: Wrap(
              children: const [
              Icon(Icons.sms_sharp,color: Colors.blue),
              SizedBox(width: 30),
              Icon(Icons.phone,color: Colors.blue),
              ],
              ),
              leading: CircleAvatar(
                radius:20,
                backgroundImage: NetworkImage(
                    "https://upload.wikimedia.org/wikipedia/commons/thumb/9/93/Google_Contacts_icon.svg/1200px-Google_Contacts_icon.svg.png"),
              ),
                          ),
          ),
        ],
      ),
    );
  }
}
