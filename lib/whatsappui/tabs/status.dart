import 'package:flutter/material.dart';
import 'package:myapp/whatsappui/models/statuss.dart';

class Status extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            Expanded(
              child: ListTile(
                leading: Container(
                  width: 50.0,
                  child: Stack(
                    children: <Widget>[
                      ClipOval(
                        child: Image.network(
                          'https://www.shutterstock.com/image-illustration/cute-cartoon-teddy-bear-balloons-600w-1994587142.jpg',
                          width: 50,
                          height: 50,
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Container(
                          width: 20.0,
                          height: 20.0,
                          decoration: BoxDecoration(
                              color: Theme.of(context).colorScheme.secondary,
                              borderRadius: BorderRadius.circular(20.0)),
                          child: Icon(
                            Icons.add,
                            color: Colors.white,
                            size: 15.0,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                title: Text(
                  'My Status',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text('Tab to add Status Update'),
              ),
            )
          ],
        ),
        SizedBox(
          height: 30.0,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
            width: double.infinity,
            color: Colors.grey.shade200,
            child: Text(
              'Recent Update',
              style: TextStyle(
                  fontWeight: FontWeight.bold, color: Colors.grey.shade500),
            ),
          ),
        ),
        Expanded(
          child: ListView.builder(
              itemCount: StatusData.length,
              // ignore: unnecessary_new
              itemBuilder: (context, i) => new Column(
                    children: <Widget>[
                      new Divider(height: 0.1),
                      new ListTile(
                        leading: CircleAvatar(
                          backgroundColor: Colors.grey,
                          backgroundImage: NetworkImage(StatusData[i].pic),
                        ),
                        title: Row(
                          children: <Widget>[
                            Text(
                              StatusData[i].name,
                              style: TextStyle(
                                fontSize: 13.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        subtitle: Container(
                          child: Text(
                            StatusData[i].time,
                            style:
                                TextStyle(color: Colors.grey, fontSize: 12.0),
                          ),
                        ),
                      )
                    ],
                  )),
        )
      ],
    );
  }
}