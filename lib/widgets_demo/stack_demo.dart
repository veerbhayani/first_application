import 'package:flutter/material.dart';

class StackDemo extends StatelessWidget {
  const StackDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[900],
      body: Column(
        children: [
          Row(
            children: [
              const Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.menu,
                      color: Colors.amberAccent,
                      size: 35,
                    ),
                  ],
                ),
              ),
              const Icon(
                Icons.account_balance_wallet,
                color: Colors.white,
              ),
              Container(
                margin: const EdgeInsets.only(left: 10),
                height: 30,
                width: 80,
                decoration: const BoxDecoration(
                  color: Colors.white24,
                  borderRadius: BorderRadius.all(
                    Radius.circular(30),
                  ),
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(
                      Icons.account_circle,
                      color: Colors.white,
                    ),
                    Text(
                      'Biz',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    Icon(
                      Icons.forward,
                      color: Colors.white,
                    )
                  ],
                ),
              ),
            ],
          ),
          Container(
            margin: const EdgeInsets.only(top: 15, bottom: 15),
            height: 40,
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(
                Radius.circular(15),
              ),
            ),
            child: const Row(
              children: [
                Icon(
                  Icons.account_circle,
                  color: Colors.red,
                  size: 30,
                ),
                SizedBox(
                  width: 30,
                ),
                Icon(
                  Icons.search,
                  size: 25,
                ),
                Text(
                  'Try Delhi Activities',
                  style: TextStyle(
                      color: Colors.grey, fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          Stack(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 20.0, right: 8, left: 8),
                height: 80,
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(15),
                  ),
                ),
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      CircleAvatar(
                        radius: 33,
                        backgroundColor: Colors.white,
                        child: CircleAvatar(
                          radius: 30,
                          backgroundColor: Colors.deepOrange,
                          child: Icon(
                            Icons.flight,
                            size: 40,
                            color: Colors.blue,
                          ),
                        ),
                      ),
                      Text('Flights'),
                    ],
                  ),
                  Column(
                    children: [
                      CircleAvatar(
                        radius: 33,
                        backgroundColor: Colors.white,
                        child: CircleAvatar(
                          radius: 30,
                          backgroundColor: Colors.red,
                          child: Icon(
                            Icons.hotel,
                            size: 40,
                            color: Colors.green,
                          ),
                        ),
                      ),
                      Text('Hotels'),
                    ],
                  ),
                  Column(
                    children: [
                      CircleAvatar(
                        radius: 33,
                        backgroundColor: Colors.white,
                        child: CircleAvatar(
                          radius: 30,
                          backgroundColor: Colors.blueAccent,
                          child: Icon(
                            Icons.train,
                            size: 40,
                            color: Colors.yellowAccent,
                          ),
                        ),
                      ),
                      Text('Trains'),
                    ],
                  ),
                  Column(
                    children: [
                      CircleAvatar(
                        radius: 33,
                        backgroundColor: Colors.white,
                        child: CircleAvatar(
                          radius: 30,
                          backgroundColor: Colors.deepPurple,
                          child: Icon(
                            Icons.holiday_village,
                            size: 40,
                            color: Colors.cyanAccent,
                          ),
                        ),
                      ),
                      Text('Holidays'),
                    ],
                  ),
                ],
              ),
            ],
          ),
          Container(
            margin: const EdgeInsets.only(top: 20, left: 8, right: 8),
            height: 170,
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Icon(
                          Icons.car_rental,
                          color: Colors.blue,
                          size: 40,
                        ),
                        Text(
                          'Airpot Cabs',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Icon(
                          Icons.self_improvement,
                          color: Colors.blue,
                          size: 40,
                        ),
                        Text(
                          'Self Drive',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Colors.blue,
                            Colors.white,
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                        ),
                      ),
                      child: const Column(
                        children: [
                          Icon(
                            Icons.home,
                            color: Colors.red,
                            size: 40,
                          ),
                          Text(
                            'Home Stays',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                    const Column(
                      children: [
                        Icon(
                          Icons.home_mini,
                          color: Colors.red,
                          size: 40,
                        ),
                        Text(
                          'NearBy Gateways',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    )
                  ],
                ),
                const Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Icon(
                          Icons.cabin,
                          color: Colors.amber,
                          size: 40,
                        ),
                        Text(
                          'Outstation Cabs',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Icon(
                          Icons.airplane_ticket,
                          color: Colors.amber,
                          size: 40,
                        ),
                        Text(
                          'Self Drive',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    )
                  ],
                ),
                const Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.deepPurple,
                          size: 40,
                        ),
                        Text(
                          'Tours',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Icon(
                          Icons.book,
                          color: Colors.deepPurple,
                          size: 40,
                        ),
                        Text(
                          'Visa Services',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            height: 40,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
            ),
            margin: const EdgeInsets.only(top: 20, left: 8, right: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Icon(Icons.event),
                const Text(
                  'Events & Festivals',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 2),
                  height: 20,
                  width: 1,
                  color: Colors.black,
                ),
                const Icon(Icons.card_giftcard),
                const Text(
                  'Gift Card',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 2),
                  height: 20,
                  width: 1,
                  color: Colors.black,
                ),
                const Icon(Icons.local_offer),
                const Text(
                  'Offer',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 2),
                  height: 20,
                  width: 1,
                  color: Colors.black,
                ),
                const Icon(Icons.train),
                const Text(
                  'Hydrabad',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 10.0, top: 15.0),
            child: Row(
              children: [
                Text(
                  'Welcome offer for you, Angel',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 150,
            width: double.infinity,
            margin:
                const EdgeInsets.only(top: 20, left: 8, right: 8, bottom: 5),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(
                Radius.circular(15),
              ),
              image: DecorationImage(
                image: NetworkImage(
                  'https://m.media-amazon.com/images/I/61c7GRWldUL._AC_UX569_.jpg',
                ),
                fit: BoxFit.contain,
              ),
            ),
          ),
          Container(
            //width: double.infinity,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
              ),
              color: Colors.black,
            ),
            height: 52.5,

            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Icon(
                      Icons.account_circle,
                      color: Colors.white,
                    ),
                    Text(
                      'Home',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Icon(
                      Icons.trip_origin,
                      color: Colors.white,
                    ),
                    Text(
                      'My Trips',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Icon(
                      Icons.local_offer,
                      color: Colors.white,
                    ),
                    Text(
                      'Offer',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Icon(
                      Icons.mail,
                      color: Colors.white,
                    ),
                    Text(
                      'Trip Ideas',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Icon(
                      Icons.money,
                      color: Colors.white,
                    ),
                    Text(
                      'Trip Money',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
