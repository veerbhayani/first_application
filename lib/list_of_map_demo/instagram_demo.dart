import 'package:first_application/list_of_map_demo/raw_data.dart';
import 'package:flutter/material.dart';

class InstagramuiDemo extends StatelessWidget {
  const InstagramuiDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Row(
            children: [
              SizedBox(
                width: 5,
              ),
              Expanded(
                flex: 9,
                child: Text(
                  'Instagram',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ),
              Expanded(
                flex: 1,
                child: Icon(
                  Icons.favorite_border,
                  size: 35,
                ),
              ),
              Expanded(
                flex: 2,
                child: Icon(
                  Icons.messenger_outline,
                  size: 35,
                ),
              ),
            ],
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: List.generate(
                          instgramStoryDetails.length,
                          (index) => Column(
                            children: [
                              Column(
                                children: [
                                  CircleAvatar(
                                    radius: 30,
                                    backgroundImage: NetworkImage(
                                      instgramStoryDetails[index]
                                          ['profileImage'],
                                    ),
                                  ),
                                  Text(
                                    instgramStoryDetails[index]['username'],
                                  ),
                                ],
                              ),
                              const SizedBox(
                                width: 110,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Column(
                    children: List.generate(
                      instagramPostDetails.length,
                      (index) => Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 10, left: 10),
                            child: Row(
                              children: [
                                CircleAvatar(
                                  backgroundImage: NetworkImage(
                                    instagramPostDetails[index]['profileImage'],
                                  ),
                                ),
                                const SizedBox(
                                  width: 15,
                                ),
                                Expanded(
                                  flex: 7,
                                  child: Text(
                                    instagramPostDetails[index]['name'],
                                    style: const TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                const Expanded(
                                  flex: 1,
                                  child: Icon(Icons.more_vert),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Image(
                            image: NetworkImage(
                              instagramPostDetails[index]['feedImage'],
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Row(
                            children: [
                              SizedBox(
                                width: 10,
                              ),
                              Padding(
                                padding: EdgeInsets.all(5.0),
                                child: Icon(
                                  Icons.favorite,
                                  color: Colors.red,
                                  size: 30,
                                ),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Icon(
                                Icons.chat_bubble_outline_outlined,
                                size: 30,
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Icon(
                                Icons.send_to_mobile_rounded,
                                size: 30,
                              ),
                              SizedBox(
                                width: 300,
                              ),
                              Icon(
                                Icons.save_alt_sharp,
                                size: 30,
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              const SizedBox(
                                width: 10,
                              ),
                              Text(
                                instagramPostDetails[index]['likeDetails'],
                                style: const TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: [
                              const SizedBox(
                                width: 10,
                              ),
                              Text(
                                instagramPostDetails[index]['commentDetails'],
                                style: const TextStyle(fontSize: 15),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: [
                              const SizedBox(
                                width: 10,
                              ),
                              Text(
                                instagramPostDetails[index]['postUploadTime'],
                                style: const TextStyle(fontSize: 15),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
