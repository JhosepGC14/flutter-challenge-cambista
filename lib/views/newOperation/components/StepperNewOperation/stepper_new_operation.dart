import 'package:flutter/material.dart';

class StepperNewOperation extends StatefulWidget {
  const StepperNewOperation({
    super.key,
  });

  @override
  State<StepperNewOperation> createState() => _StepperNewOperationState();
}

class _StepperNewOperationState extends State<StepperNewOperation> {
  int currentStepValue = 0;

  void onChangeNextStep() {
    setState(() {
      currentStepValue = currentStepValue + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Flex(
      direction: Axis.horizontal,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        StepItemNewOperation(
          currentStep: currentStepValue,
          valueStep: 0,
          onChangeStep: onChangeNextStep,
        ),
        const SizedBox(
          width: 8.00,
        ),
        StepItemNewOperation(
          currentStep: currentStepValue,
          valueStep: 1,
          onChangeStep: onChangeNextStep,
        ),
        const SizedBox(
          width: 8.00,
        ),
        StepItemNewOperation(
          currentStep: currentStepValue,
          valueStep: 2,
          onChangeStep: onChangeNextStep,
        ),
      ],
    );
  }
}

class StepItemNewOperation extends StatefulWidget {
  final int currentStep;
  final int valueStep;
  final Function onChangeStep;

  const StepItemNewOperation({
    super.key,
    required this.currentStep,
    required this.valueStep,
    required this.onChangeStep,
  });

  @override
  State<StepItemNewOperation> createState() => _StepItemNewOperationState();
}

class _StepItemNewOperationState extends State<StepItemNewOperation> {
  String getTitleOfStepper(int stepNumber) {
    String titleStep = '';
    switch (stepNumber) {
      case 0:
        titleStep = '1. Cotiza';
      case 1:
        titleStep = '2. Registra';
      case 2:
        titleStep = '3. Transfiere';
        break;
      default:
    }
    return titleStep;
  }

  @override
  Widget build(BuildContext context) {
    return Flexible(
      flex: 2,
      child: GestureDetector(
        onTap: () {
          if (widget.currentStep < 2) {
            widget.onChangeStep();
          }
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              getTitleOfStepper(widget.valueStep),
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: widget.valueStep <= widget.currentStep
                    ? Colors.black
                    : Colors.grey[350],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 5),
              decoration: BoxDecoration(
                color: widget.valueStep <= widget.currentStep
                    ? const Color(0xFFFEC700)
                    : Colors.grey[350],
                borderRadius: const BorderRadius.all(
                  Radius.circular(50.00),
                ),
              ),
              height: 5,
            )
          ],
        ),
      ),
    );
  }
}
