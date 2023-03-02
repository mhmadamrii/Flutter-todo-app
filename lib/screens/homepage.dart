import 'package:flutter/material.dart';
import 'package:todo/widgets/custom_widgets.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: (() {}),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(15.0),
          ),
        ),
        child: const Icon(
          Icons.add,
        ),
      ),
      body: SafeArea(
        // ignore: avoid_unnecessary_containers
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(
            horizontal: 24.0,
          ),
          color: const Color(0xFFF6F6F6),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // ignore: avoid_unnecessary_containers
              Container(
                margin: const EdgeInsets.only(
                  top: 10,
                  bottom: 30,
                ),
                child: const Image(
                  width: 100,
                  height: 100,
                  image: AssetImage(
                    'assets/images/electronics.png',
                  ),
                ),
              ),
              Expanded(
                child: ListView(
                  children: const [
                    TaskCardWidget(
                      title: "Get Started",
                      desc:
                          "Ipsum non duis duis dolor ullamco culpa nostrud non dolor velit eiusmod. Aliqua incididunt adipisicing aliquip esse. Minim mollit proident velit qui. Est in cupidatat eu sit ex. Ipsum esse labore laborum eu elit exercitation minim tempor. Deserunt duis incididunt Lorem proident tempor.",
                    ),
                    TaskCardWidget(),
                    TaskCardWidget(),
                    TaskCardWidget(),
                    TaskCardWidget(),
                    TaskCardWidget(),
                    TaskCardWidget(),
                    TaskCardWidget(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
