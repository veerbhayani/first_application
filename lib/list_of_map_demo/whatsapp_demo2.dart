import 'package:first_application/list_of_map_demo/raw_data.dart';
import 'package:first_application/list_of_map_demo/whatsapp.model.dart';
import 'package:flutter/material.dart';

class WhatsappDemo2 extends StatelessWidget {
  const WhatsappDemo2({super.key});

  @override
  Widget build(BuildContext context) {
    for (var element in whatsappDetails) {
      whatsappData.add(
        Whatsapp.fromJson(element),
      );
    }
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF128C7E),
        title: const Text(
          'Whatsapp',
          style: TextStyle(
              fontSize: 23, fontWeight: FontWeight.w500, color: Colors.white),
        ),
        actions: const [
          Icon(
            Icons.camera_alt_outlined,
            color: Colors.white,
          ),
          SizedBox(
            width: 20,
          ),
          Icon(
            Icons.search,
            color: Colors.white,
          ),
          SizedBox(
            width: 15,
          ),
          Icon(
            Icons.more_vert,
            color: Colors.white,
          ),
          SizedBox(
            width: 10,
          ),
        ],
        bottom: const PreferredSize(
          preferredSize: Size(double.infinity, 50),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(
                Icons.people,
                size: 25,
                color: Colors.white,
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                'Chats',
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              SizedBox(
                width: 20,
              ),
              Text(
                'Status',
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              SizedBox(
                width: 20,
              ),
              Text(
                'Calls',
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: List.generate(
            whatsappData.length,
            (index) => ListTile(
              title: Text(
                whatsappData[index].name!,
              ),
              subtitle: Text(
                whatsappData[index].messege!,
              ),
              trailing: Text(
                whatsappData[index].time!,
              ),
              leading: CircleAvatar(
                backgroundColor: const Color(0xFF128C7E),
                backgroundImage: NetworkImage(
                  whatsappData[index].image!,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
