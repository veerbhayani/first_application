import 'package:flutter/material.dart';

class WhatsappUi extends StatelessWidget {
  const WhatsappUi({super.key});

  @override
  Widget build(BuildContext context) {
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
      body: const Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  ListTile(
                    leading: CircleAvatar(
                      radius: 24,
                      backgroundImage: NetworkImage(
                          'https://th.bing.com/th/id/OIP.tpeYTotR7g1cqV4Y6WJ04wHaE7?w=288&h=191&c=7&r=0&o=5&dpr=1.3&pid=1.7'),
                    ),
                    title: Text(
                      'Fr Hardik Mavani Flutter',
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    subtitle: Text(
                      'Ok',
                    ),
                    trailing: Text('11.02 pm'),
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      radius: 24,
                      backgroundImage: NetworkImage(
                          'https://th.bing.com/th/id/OIP.QiHVcPVNT15Pcs_cPYum_AHaGn?w=214&h=191&c=7&r=0&o=5&dpr=1.3&pid=1.7'),
                    ),
                    title: Text(
                      'Fr Vishal Mavani Flutter',
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    subtitle: Text(
                      '✅ Photo',
                    ),
                    trailing: Text('10.46 pm'),
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      radius: 24,
                      backgroundImage: NetworkImage(
                          'https://i.pinimg.com/originals/85/02/06/850206d31077d3d93d400ca4f2b47947.jpg'),
                    ),
                    title: Text(
                      'Fr Ansh Chaniyara',
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    subtitle: Text(
                      '✅ Photo',
                    ),
                    trailing: Text('10.46 pm'),
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      radius: 24,
                      backgroundImage: NetworkImage(
                          'https://i.pinimg.com/originals/e1/b0/b3/e1b0b33c49820079350f4d8dd1bac799.jpg'),
                    ),
                    title: Text(
                      'Fr Mintan Flutter',
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    subtitle: Text(
                      '✅ Photo',
                    ),
                    trailing: Text('10.46 pm'),
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      radius: 24,
                      backgroundImage: NetworkImage(
                          'https://i.pinimg.com/736x/dd/86/ae/dd86ae5b8316f4489bea2c9694c27d7e.jpg'),
                    ),
                    title: Text(
                      'INTRADAY 11',
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    subtitle: Text(
                      '~nicfno: 60700🔥🔥🔥 START BOOKIN...',
                    ),
                    trailing: Text('9.37 pm'),
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      radius: 24,
                      backgroundImage: NetworkImage(
                          'https://wallpapercave.com/wp/wp3274856.jpg'),
                    ),
                    title: Text(
                      'Dinesh Bhalala',
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    subtitle: Text(
                      '✅ NIFTY 18100 CE BUY:163 TGT:200 2...',
                    ),
                    trailing: Text('9.38 am'),
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      radius: 24,
                      backgroundImage: NetworkImage(
                          'https://th.bing.com/th/id/OIP.tGuX4cepUVONJdqEflr8lAAAAA?pid=ImgDet&rs=1'),
                    ),
                    title: Text(
                      'Dhanvi',
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    subtitle: Text(
                      '✅ Photo',
                    ),
                    trailing: Text('8.59 am'),
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      radius: 24,
                      backgroundImage: NetworkImage(
                          'https://th.bing.com/th/id/OIP.JGw8hLf2uZo_4XNblPEsYQHaHa?pid=ImgDet&rs=1'),
                    ),
                    title: Text(
                      'Satish',
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    subtitle: Text(
                      '✅ Photo',
                    ),
                    trailing: Text('8.59 am'),
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      radius: 24,
                      backgroundImage: NetworkImage(
                          'https://th.bing.com/th/id/OIP.bNrQ9DazwPcOsF8puUXZ0QHaHa?pid=ImgDet&rs=1'),
                    ),
                    title: Text(
                      'Codifly infotech(boys)',
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    subtitle: Text(
                      'Codifly Infotech: just_audio: ^0.9.32',
                    ),
                    trailing: Text('7.37 am'),
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      radius: 24,
                      backgroundImage: NetworkImage(
                          'https://th.bing.com/th/id/R.13b58ab8e44e60404fbc995109918095?rik=6sslTjrwLJ7%2ffQ&riu=http%3a%2f%2f4.bp.blogspot.com%2f_418Yyh7JVUw%2fTM0tTiVmg5I%2fAAAAAAAABXQ%2fZMnxULcsNZ0%2fs1600%2fbapa%2bsitaram89.jpg&ehk=TzeHHVOHvB6w322Sqjovof2ITLq1Y2jPpLRTuUmc8TI%3d&risl=&pid=ImgRaw&r=0'),
                    ),
                    title: Text(
                      'Papa',
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    subtitle: Text(
                      '📸 Sitaram',
                    ),
                    trailing: Text('6.32 am'),
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      radius: 24,
                      backgroundImage: NetworkImage(
                          'https://freshersindia.in/wp-content/uploads/2021/02/kotak-5.jpg'),
                    ),
                    title: Text(
                      'Kotak Mahindra Bank',
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    subtitle: Text(
                      '📸 Now Pay instantly on the GST portal,...',
                    ),
                    trailing: Text('11/05/2023'),
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      radius: 24,
                      backgroundImage: NetworkImage(
                          'https://th.bing.com/th/id/R.5ea7f0e0fa9afe5ff6eb833a44945258?rik=GqCEIPM%2fMIBwuQ&riu=http%3a%2f%2fwww.mygodpictures.com%2fmgp%2f01%2f797_original.jpg&ehk=6sW0pzBVZSJ9DnZw4gWf39Quzb1PLU%2bPQtEe5zprmz4%3d&risl=&pid=ImgRaw&r=0'),
                    ),
                    title: Text(
                      'Mahadev',
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    subtitle: Text(
                      '✅ Okk',
                    ),
                    trailing: Text('11/05/2023'),
                  ),
                  ListTile(
                    // contentPadding: EdgeInsets.all(50),
                    // dense: true,
                    // focusColor: Colors.green,
                    // horizontalTitleGap: 50,
                    // hoverColor: Colors.amber,
                    // selected: true,
                    // selectedTileColor: Colors.amber,
                    // splashColor: Colors.cyanAccent,
                    leading: CircleAvatar(
                      radius: 24,
                      backgroundImage: NetworkImage(
                          'https://fsb.zobj.net/crop.php?r=CJqHwpotOH-tWK-rxMAuT8NNuZ384oRD23GDnAiefFe-abimzXDpUKEz63WpBg64mNZIuuy0ZsQ1f8hz8jW7BWMOw4m33Od41MG595M9atYcC4BTBVekxBEq_eAE0u4Yqi2zwsdwJNtOPpTy'),
                    ),
                    title: Text(
                      'Maa',
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    subtitle: Text(
                      '✅ Okay',
                    ),
                    trailing: Text('10/05/2023'),
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      radius: 24,
                      backgroundImage: NetworkImage(
                          'https://th.bing.com/th/id/R.9f50b5a313af60b2f20c86afac116835?rik=KsRoR%2ffXJ%2brZWA&riu=http%3a%2f%2ficon-library.com%2fimages%2fno-profile-picture-icon%2fno-profile-picture-icon-15.jpg&ehk=pPbvrx2x8%2bTYo5rW3%2bixebN91Ui8y3%2fdyVIA8kIBueU%3d&risl=&pid=ImgRaw&r=0'),
                    ),
                    title: Text(
                      'Farm',
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    subtitle: Text(
                      'Codifly Infotech: I hope all is good class...',
                    ),
                    trailing: Text('10/05/2023'),
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      radius: 24,
                      backgroundImage: NetworkImage(
                          'https://lh5.googleusercontent.com/p/AF1QipMzXEx5gxDUD2KnURGWeRcoI6BDPh2aIdzj03Za'),
                    ),
                    title: Text(
                      'Shivam Mobile (02)',
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    subtitle: Text(
                      '+91 7990450824 joined using this group\'...',
                    ),
                    trailing: Text(
                      '10/05/2023',
                    ),
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      radius: 24,
                      backgroundImage: NetworkImage(
                          'https://th.bing.com/th/id/OIP.XGt6oYVCV-pb1hkoaGcaCwHaE8?pid=ImgDet&w=1500&h=1000&rs=1'),
                    ),
                    title: Text(
                      'Fr Sujal Lathiya',
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    subtitle: Text(
                      '✅ Naii',
                    ),
                    trailing: Text('10/05/2023'),
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      radius: 24,
                      backgroundImage: NetworkImage(
                          'https://th.bing.com/th/id/OIP.Dp1YLJ0TOahn7hc2MYUPgwAAAA?pid=ImgDet&rs=1'),
                    ),
                    title: Text(
                      'Fr Chirag Italiya Flutter',
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    subtitle: Text(
                      'Okay',
                    ),
                    trailing: Text('08/05/2023'),
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      radius: 24,
                      backgroundImage: NetworkImage(
                          'https://th.bing.com/th/id/OIP.M2PeMix6kLHe3qwCetb9UAHaJ4?pid=ImgDet&rs=1'),
                    ),
                    title: Text(
                      'Janak Sabhadiya',
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    subtitle: Text(
                      'Kya',
                    ),
                    trailing: Text('07/05/2023'),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return const SendMessegeScreen();
              },
            ),
          );
        },
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(30),
          ),
        ),
        backgroundColor: Colors.green,
        child: const Icon(
          Icons.send_sharp,
          color: Colors.white,
        ),
      ),
    );
  }
}

class SendMessegeScreen extends StatelessWidget {
  const SendMessegeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF128C7E),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_outlined,
            size: 26,
            color: Colors.white,
          ),
        ),
        title: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Select contact',
              style: TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
            ),
            Text(
              '20 contacts',
              style: TextStyle(
                fontSize: 14,
                color: Colors.white,
              ),
            )
          ],
        ),
        actions: const [
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
      ),
      body: const Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: 15,
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Color(0xFF128C7E),
                      child: Icon(
                        Icons.people_sharp,
                        color: Colors.white,
                      ),
                    ),
                    title: Text(
                      'New Group',
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Color(0xFF128C7E),
                      child: Icon(
                        Icons.person_add,
                        color: Colors.white,
                        size: 22,
                      ),
                    ),
                    title: Text(
                      'New Contact',
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    trailing: Icon(Icons.qr_code_2_rounded),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Color(0xFF128C7E),
                      child: Icon(
                        Icons.people_sharp,
                        color: Colors.white,
                      ),
                    ),
                    title: Text(
                      'New community',
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        'Contacts on Whatsapp',
                        style: TextStyle(
                            fontSize: 14,
                            color: Color.fromARGB(255, 131, 129, 129),
                            fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://i.pinimg.com/236x/b2/51/25/b2512526e7727814658f4c2eda14beac.jpg'),
                    ),
                    title: Text(
                      'Viraj Bhayani (You)',
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    subtitle: Text('Messege yourself'),
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://i.pinimg.com/236x/07/f8/7c/07f87c6c599a8aac43d72c1e6bf25e66.jpg'),
                    ),
                    title: Text(
                      'Abhal Mama',
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://i.pinimg.com/236x/68/7c/cf/687ccf6f9a7987377f8eec6aba64e409.jpg'),
                    ),
                    title: Text(
                      'Airtel Postpaid Government',
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    subtitle: Text('Hey there! I am using Whatsapp.'),
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://i.pinimg.com/236x/84/0d/b4/840db4ea8cfc4d63fb8b1ff30310bc33.jpg'),
                    ),
                    title: Text(
                      'AJ STYLES',
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    subtitle: Text('Hey there! I am using Whatsapp.'),
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://i.pinimg.com/236x/1a/96/cb/1a96cb61e050dda1eebed5fe9d82e65b.jpg'),
                    ),
                    title: Text(
                      'Akshardham School',
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    subtitle: Text('Hey there! I am using Whatsapp.'),
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://i.pinimg.com/236x/00/1b/cf/001bcf43a7251d93ce6a77937d42cce4.jpg'),
                    ),
                    title: Text(
                      'Aman Diman YFS',
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    subtitle: Text('"I wish, i couldbe a better me, for you"'),
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://i.pinimg.com/236x/26/13/68/26136804aca2898dbb3cad1cbcdbe3f7.jpg'),
                    ),
                    title: Text(
                      'A Dhruvin Bhesaniya',
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    subtitle: Text('Hey there! I am using Whatsapp.'),
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://i.pinimg.com/236x/49/93/5b/49935b0b7f9a368ca0abb641e1a3860e.jpg'),
                    ),
                    title: Text(
                      'Amitbhai Madhuli',
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    subtitle: Text('Available'),
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://i.pinimg.com/236x/4c/13/d1/4c13d14ca73264fe07e7c5cbf198eeb5.jpg'),
                    ),
                    title: Text(
                      'AMRUTPATEL',
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    subtitle: Text('Hey there! I am using Whatsapp.'),
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://i.pinimg.com/236x/81/02/69/810269f9effe77613a90078ae99f45ca.jpg'),
                    ),
                    title: Text(
                      'Ankitbhai Zeel Store',
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    subtitle: Text('🙏'),
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://i.pinimg.com/236x/11/1c/52/111c52c59bc8e1d5dfd0e79feeb09eaf.jpg'),
                    ),
                    title: Text(
                      'Asha Bhalala',
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    subtitle: Text('Urgent calls only'),
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://i.pinimg.com/236x/db/36/70/db36704e3d69cecb83c467cc6e73f3a7.jpg'),
                    ),
                    title: Text(
                      'Bharat Mama Ahir',
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    subtitle:
                        Text('Aai pithad air conditioner sales & service'),
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://i.pinimg.com/236x/31/ad/25/31ad25b5cdedc85b8fd07555f45728e6.jpg'),
                    ),
                    title: Text(
                      'Bharatkaka Bhayani',
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    subtitle: Text('Jay Swaminarayan 🙏🙏🙏'),
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://i.pinimg.com/236x/d2/77/10/d2771092926a99fb837e3a298a726a95.jpg'),
                    ),
                    title: Text(
                      'Bhavesh Bhalala',
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    subtitle: Text('Hey there! I am using Whatsapp.'),
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://i.pinimg.com/236x/55/e5/ec/55e5ec815cccf644c4bd3fd523b23d76.jpg'),
                    ),
                    title: Text(
                      'Bhavesh Sir',
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    subtitle: Text('Hey there! I am using Whatsapp.'),
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://i.pinimg.com/236x/e6/91/37/e69137305a9fecaef8e994acbfa06503.jpg'),
                    ),
                    title: Text(
                      'C Janak Kathiriya',
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    subtitle: Text('At the gym'),
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://i.pinimg.com/236x/f7/59/f1/f759f1a6c78c54e7c41a99ff2da50d40.jpg'),
                    ),
                    title: Text(
                      'ChatGpt',
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    subtitle: Text('Hey there! I am using Whatsapp.'),
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://i.pinimg.com/236x/f2/d0/eb/f2d0ebe51ed3066ca68f175841710d6e.jpg'),
                    ),
                    title: Text(
                      'Chetan Bhai Bhalala',
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    subtitle: Text('My Life My Rule'),
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://i.pinimg.com/236x/80/44/33/8044339987769a15a5aef6b41c5a6489.jpg'),
                    ),
                    title: Text(
                      'Chetan Mama (C.A)',
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    subtitle: Text('Hey there! I am using Whatsapp.'),
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://i.pinimg.com/236x/ef/8d/0d/ef8d0dc5f72b0961d577babcb3f8778a.jpg'),
                    ),
                    title: Text(
                      'Chirag Sir',
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    subtitle: Text('Die with memories,not Dreams😎😎😎'),
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
