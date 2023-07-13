import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
// import 'package:vertical_stepper/vertical_stepper.dart';
// import 'package:vertical_stepper/vertical_stepper.dart' as step;

void main() => runApp(MaterialApp(
      home: tracker(),
      debugShowCheckedModeBanner: false,
    ));

class tracker extends StatefulWidget {
  @override
  _trackerState createState() => _trackerState();
}

class _trackerState extends State<tracker> with TickerProviderStateMixin {
  bool result = false;
  bool _validate = false;
  //create list of data for stepper!!
  // List<step.Step> steps = [
  //   step.Step(
  //     shimmer: false,
  //     title: "Application Submitted",
  //     iconStyle: Colors.green,
  //     content: Padding(
  //       padding: const EdgeInsets.only(left: 5),
  //       child: Align(
  //         alignment: Alignment.centerLeft,
  //         child: Text("Your application is successfully submitted"),
  //       ),
  //     ),
  //   ),
  //   step.Step(
  //     shimmer: false,
  //     title: "Review",
  //     iconStyle: Colors.green,
  //     content: Align(
  //       alignment: Alignment.centerLeft,
  //       child: Text("Your application is under review"),
  //     ),
  //   ),
  //   step.Step(
  //     shimmer: false,
  //     title: "Approved",
  //     iconStyle: Colors.green,
  //     content: Align(
  //       alignment: Alignment.centerLeft,
  //       child: Text("Your application has been approved"),
  //     ),
  //   ),
  // ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: content(),
    );
  }

  Widget content() {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(top: 35),
          height: 300,
          child: Align(
            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.only(top: 30.0),
              child: Column(
                children: [
                  Image.network(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQoA9c1v-V6cN_VyOd5mgJCdpO2sDsi1HvKYg&usqp=CAU",
                    height: 200,
                  ),
                  const Text(
                    "Tracker",
                    style: TextStyle(fontSize: 30),
                  )
                ],
              ),
            ),
          ),
        ),
        body()
      ],
    );
  }

  Widget body() {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      const SizedBox(
        height: 50,
      ),
      const Padding(
        padding: EdgeInsets.only(left: 55.0),
        child: Text(
          "Unique id : ",
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700),
        ),
      ),
      const SizedBox(
        height: 20,
      ),
      Padding(
          padding: const EdgeInsets.fromLTRB(30, 0, 20, 0),
          child: Row(
            children: [
              Container(
                height: 45,
                width: 250,
                decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(20)),
                child: const TextField(
                  style: TextStyle(fontSize: 18, color: Colors.black),
                  decoration: InputDecoration(
                      border: OutlineInputBorder(borderSide: BorderSide.none),
                      hintText: " e.g #123456789"),
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    result = true;
                  });
                },
                child: const Icon(
                  Icons.search,
                  size: 35,
                ),
              )
            ],
          )),
      const SizedBox(
        height: 20,
      ),
      result
          ? Padding(
              padding: const EdgeInsets.fromLTRB(35, 2, 31, 0),
              child: Row(
                children: [
                  const Text(
                    "Result :",
                    style: TextStyle(fontSize: 25),
                  ),
                  const Spacer(),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        result = false;
                      });
                    },
                    child: const Icon(
                      Icons.close,
                      size: 25,
                    ),
                  )
                ],
              ),
            )
          : const SizedBox(),
      const SizedBox(
        height: 5,
      ),
      // result
      //     ? Padding(
      //         padding: const EdgeInsets.fromLTRB(15, 2, 15, 0),
      //         child: VerticalStepper(
      //           steps: steps,
      //           dashLength: 2,
      //         ))
      //     : SizedBox(),
    ]);
  }
}
