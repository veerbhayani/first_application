// ignore_for_file: file_names

import 'package:flutter/material.dart';

class GmailUi extends StatelessWidget {
  const GmailUi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: MaterialButton(
          onPressed: () {
            showModalBottomSheet(
              shape: const CircleBorder(),
              context: context,
              builder: (context) => Container(
                height: 332,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(30),
                  ),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Expanded(
                              child: Text(
                                'Create',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            Icon(Icons.cancel_outlined),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(50),
                                ),
                                color: Colors.grey[200],
                              ),
                              child: const Icon(
                                Icons.video_camera_back_outlined,
                                size: 25,
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.all(16),
                              child: Text(
                                'Create a Short',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(50),
                                ),
                                color: Colors.grey[200],
                              ),
                              child: const Icon(
                                Icons.upload_rounded,
                                size: 25,
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.all(16),
                              child: Text(
                                'Upload a video',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(50),
                                ),
                                color: Colors.grey[200],
                              ),
                              child: const Icon(
                                Icons.wifi_tethering_outlined,
                                size: 25,
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.all(16),
                              child: Text(
                                'Go live',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(50),
                                ),
                                color: Colors.grey[200],
                              ),
                              child: const Icon(
                                Icons.edit_square,
                                size: 25,
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.all(16),
                              child: Text(
                                'Create a post',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
          child: const Text('Show BottomSheet'),
        ),
      ),
    );
  }
}
