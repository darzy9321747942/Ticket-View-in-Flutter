import 'package:flutter/material.dart';
import 'package:ticket_widget/ticket_widget.dart';
import 'package:ticketbooking/Screens/ticketview.dart';
import 'package:ticketbooking/Screens/ticketview3.dart';

void main() {
  runApp(const ticketscreen());
}

class ticketscreen extends StatelessWidget {
  
  const ticketscreen ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyTicketView(),
    );
  }
}

class MyTicketView extends StatelessWidget {
  const MyTicketView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return const Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Center(
        child: TicketWidget(
          width: 345,
          height: 650,
          isCornerRounded: true,
          padding: EdgeInsets.all(10),
          
          child: TicketData(),
        ),
      ),
    );
  }
}

class TicketData extends StatelessWidget {
  const TicketData({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      
      children: [
        SizedBox(height: 20,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 120.0,
              height: 25.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30.0),
                border: Border.all(width: 1.0, color: Colors.green),
              ),
              child: const Center(
                child: Text(
                  'Business Class',
                  style: TextStyle(color: Colors.green),
                ),
              ),
            ),
            Row(
              children: const [
                Text(
                  'Mumbai',
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 8.0),
                  child: Icon(
                    Icons.flight_takeoff,
                    color: Colors.pink,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 8.0),
                  child: Text(
                    'Delhi',
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                )
              ],
            )
          ],
        ),
        const Padding(
          padding: EdgeInsets.only(top: 20.0),
          child: Text(
            'Flight Ticket',
            style: TextStyle(
                color: Colors.black,
                fontSize: 23.0,
                fontWeight: FontWeight.bold),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 1, right: 10.0),
                child: ticketDetailsWidget(
                    'Passengers', 'Pratham Darji', 'Date', '10-08-2023'),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 12.0, right: 52.0),
                child: ticketDetailsWidget('Flight', '76836A45', 'Gate', '66B'),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 12.0, right: 53.0),
                child: ticketDetailsWidget('Class', 'Business', 'Seat', '21B'),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 40.0, left: 30.0, right: 30.0),
          child: Container(
            width: 270.0,
            height: 80.0,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/b.png'),
                    fit: BoxFit.cover)),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(top: 12.0, left: 85.0, right: 65.0),
          child: Text(
            '0000 +9230 2884 5163',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        ),
        const SizedBox(height: 2),
        const Text('         Developer: instagram.com/Pratham Darji'),
      const SizedBox(height: 9),
           Ticketview3(),

      ],
    );
    
  }
}

Widget ticketDetailsWidget(String firstTitle, String firstDesc,
    String secondTitle, String secondDesc) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Padding(
        padding: const EdgeInsets.only(left: 12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              firstTitle,
              style: const TextStyle(color: Colors.grey),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 4.0),
              child: Text(
                firstDesc,
                style: const TextStyle(color: Colors.black),
              ),
            )
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(right: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              secondTitle,
              style: const TextStyle(color: Colors.grey),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 4.0),
              child: Text(
                secondDesc,
                style: const TextStyle(color: Colors.black),
              ),
            )
          ],
        ),
      )
    ],
  );

}