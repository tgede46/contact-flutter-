import 'package:flutter/material.dart';

class ContactProfilePage extends StatelessWidget {
  const ContactProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1D2DB5),
      appBar: AppBar(
        backgroundColor: const Color(0xFF1D2DB5),
        elevation: 0,
        leading: const Icon(Icons.arrow_back, color: Colors.white),
        title: const Text(
          'Contact Profile',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          const SizedBox(height: 40),
          const CircleAvatar(
            radius: 70,
            backgroundColor: Color.fromARGB(255, 255, 255, 255),

          ),
          const SizedBox(height: 40),
          Container(
            width: MediaQuery.of(context).size.width,
            margin: const EdgeInsets.only(top: 20),
            padding: const EdgeInsets.symmetric(vertical: 30),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                CircleAvatar(
                  radius: 30,
                  backgroundColor: Color(0xFF121A62),
                  child: Icon(Icons.call, size: 30, color: Colors.white),
                ),
                CircleAvatar(
                  radius: 30,
                  backgroundColor: Color(0xFF121A62),
                  child: Icon(Icons.message, size: 30, color: Colors.white),
                ),
                CircleAvatar(
                  radius: 30,
                  backgroundColor: Color(0xFF121A62),
                  child: Icon(Icons.email, size: 30, color: Colors.white),
                ),
              ],
            ),
          ),
          Divider(
            color: const Color.fromARGB(255, 204, 204, 204),
            height: 1,
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              color: Colors.white,
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      SizedBox(height: 30),
                      Text(
                        "Contact Information",
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26, color: Color(0xFF121A62)),
                      ),
                      SizedBox(height: 30),
                      ContactItem(title: "Behance", content: "@artpro_ya", ),
                      SizedBox(height: 10),
                      ContactItem(title: "Email", content: "yaseenahmeed@yahoo.com"),
                      SizedBox(height: 10),
                      ContactItem(title: "Mobile", content: "+8801712581668"),
                      SizedBox(height: 10),
                      ContactItem(title: "LinkedIn", content: "@prodesigneryasin"),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Divider(color: const Color.fromARGB(255, 204, 204, 204),
            height: 1,
          ),
        ],
      ),
    );
  }
}

class ContactItem extends StatelessWidget {
  final String title;
  final String content;

  const ContactItem({
    super.key,
    required this.title,
    required this.content,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 80,
            child: Text(
              title,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                color: Color(0xFF1D2DB5),
              ),
            ),
          ),
          Expanded(
            child: Text(
              content,
              style: const TextStyle(color: Colors.grey),
            ),
          ),
        ],
      ),
    );
  }
}
