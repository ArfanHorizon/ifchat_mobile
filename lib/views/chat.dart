import 'package:flutter/material.dart';
import 'package:ifchat/models/message.dart';
import 'package:ifchat/controllers/message_controller.dart'; // Make sure the path is correct

class ChatPage extends StatefulWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  _ChatPageState createState() => _ChatPageState();
}

class Message {
  final String senderName;
  final String message;

  Message({
    required this.senderName,
    required this.message,
  });
}

class _ChatPageState extends State<ChatPage> {
  List<Message> messages = [];
  final TextEditingController _textEditingController = TextEditingController();
  final FocusNode _focusNode = FocusNode();
  MessageController messageController = MessageController();

  @override
  void initState() {
    super.initState();
    _fetchMessages();
  }

  _fetchMessages() async {
    try {
      List<Product> fetchedMessages = await messageController.getMessages();
      setState(() {
        messages = fetchedMessages
            .map((product) => Message(
                  senderName: product.name,
                  message: product.text,
                ))
            .toList();
      });
    } catch (e) {
      print("Error fetching messages: $e");
    }
  }

  void sendMessage() async {
    String messageText = _textEditingController.text.trim();
    String senderName =
        'anonymous'; // You need to replace this with the actual sender's name

    if (messageText.isNotEmpty) {
      try {
        // Add the product first
        await messageController.addProduct(context, messageText, senderName);

        // Retrieve the product information
        List<Product> fetchedMessages = await messageController.getMessages();
        if (fetchedMessages.isNotEmpty) {
          // Assuming you want to get the first product, adjust accordingly
          Product product = fetchedMessages.first;

          setState(() {
            messages.insert(
              0,
              Message(
                senderName: product.name,
                message: messageText,
              ),
            );
            _textEditingController.clear();
            _focusNode.requestFocus();
          });
        }
      } catch (e) {
        if (e is Exception && e.toString().contains('ClientException')) {
          print("ClientException: ${e.toString()}");
        }
        print('Error sending message: $e');
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF36393F),
        title: Row(
          children: [
            Image.network(
              'assets/images/logo.png',
              height: 40.0,
            ),
            SizedBox(width: 10.0),
            Text(
              'Chat Page',
              style: TextStyle(fontSize: 18.0, color: Colors.white),
            ),
          ],
        ),
        actions: [
          // Sign Out Button
          TextButton(
            onPressed: () {
              // Navigate to the previous page
              Navigator.pop(context);
            },
            child: Text(
              'Sign Out',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16.0,
              ),
            ),
          ),
        ],
        automaticallyImplyLeading: false,
      ),
      backgroundColor: Color(0xFF36393F),
      body: Column(
        children: [
          // Welcome to IF Chat
          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.only(top: 20.0, bottom: 8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Welcome to',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'IF Chat',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          // Let's Start Chatting and Discussing !!!
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.only(bottom: 16.0),
            child: Column(
              children: [
                Text(
                  'Let\'s Start Chatting and Discussing !!! 😁',
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.7),
                    fontSize: 18.0,
                  ),
                ),
                Divider(
                  color: Colors.white.withOpacity(0.3),
                  thickness: 1.0,
                  height: 16.0,
                ),
              ],
            ),
          ),
          // Message List
          Expanded(
            child: ListView.builder(
              reverse: true,
              itemCount: messages.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(width: 8.0),
                      // Message Content
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Sender Name
                          Text(
                            messages[index].senderName,
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 14.0,
                            ),
                          ),
                          SizedBox(height: 4.0),
                          // Message Content
                          Text(
                            messages[index].message,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16.0,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          // Input Message
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _textEditingController,
                    focusNode: _focusNode,
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      hintText: 'Type your message...',
                      hintStyle: TextStyle(color: Colors.grey),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                    ),
                    onEditingComplete: () {
                      sendMessage();
                    },
                  ),
                ),
                SizedBox(width: 8.0),
                IconButton(
                  icon: Icon(Icons.send, color: Colors.white),
                  onPressed: () {
                    sendMessage();
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: ChatPage(),
  ));
}
