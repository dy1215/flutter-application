import 'package:flutter/material.dart';

class LStepper extends StatefulWidget{
  @override
  _LStepperState createState()=> _LStepperState();
}

class _LStepperState extends State<LStepper>{
  int current_step = 0;
  List<Step> my_step = [
    Step(title: Text("Step 1"), content: Text("Start"), isActive: true),
    Step(
      title: Text("Step 2"), 
      content: Text("Process 1"),
      state: StepState.editing,
      isActive: true
    ),
    Step(
      title: Text("Step 3"),
      content: Text("Process 2"),
      state: StepState.editing,
      isActive: true
    ),
    Step(
      title: Text("Step 4"), 
      content: Text("Process 3"),
      state: StepState.editing,
      isActive: true
    ),
    Step(title: Text("Step 5"), content: Text("End"),isActive: true),
  ];
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Container(
        child: Stepper(
          currentStep: this.current_step,
          steps: my_step,
          type: StepperType.vertical,
          onStepTapped: (step){
            setState(() {
              current_step=step;
            });
          },
          onStepCancel: (){
            setState(() {
              if(current_step>0){
                current_step=current_step-1;
              }
              else{
                current_step=0;
              }
            });
          },
          onStepContinue: (){
            setState(() {
              if(current_step<my_step.length-1){
                current_step=current_step+1;
              }
              else{
                current_step=0;
              }
            });
          },
        )
      ),
    );
  }
}