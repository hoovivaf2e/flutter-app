import 'package:flutter/material.dart';

class AboutPage extends StatefulWidget {
  static const String routeName = "/about";

  @override
  AboutPageState createState() => AboutPageState();
}

class AboutPageState extends State<AboutPage> {
  int current_step = 0;
  List<Step> my_steps = [
    Step(
        title: Text("Step 1"),
        content: Text("Hello"),
    ),
    Step(
      title: Text("Step 2"),
      content: Text("Hello 123"),
    ),
    Step(
      title: Text("Step 3"),
      content: Text("Hello 456"),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("About"),
      ),
      body: Container(
        child: Stepper(
          currentStep: this.current_step,
          steps: my_steps,
          type: StepperType.vertical,
          onStepTapped: (step) {
            setState(() {
              current_step = step;
            });
            print("onStepTapped: " + step.toString());
          },
          onStepCancel: () {
            setState(() {
              if(current_step > 0) {
                current_step = current_step - 1;
              } else {
                current_step = 0;
              }
            });
              print("onStepCancel: " + current_step.toString());
          },
          onStepContinue: () {
            setState(() {
              if(current_step < my_steps.length - 1) {
                current_step = current_step + 1;
              } else {
                current_step = 0;
              }
            });
            print("onStepContinue: " + current_step.toString());
          },
        ),
      )
    );
  }


}