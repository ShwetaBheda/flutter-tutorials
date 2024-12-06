import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: LiftingStateUpExample(),
    );
  }
}

class LiftingStateUpExample extends StatefulWidget {
  const LiftingStateUpExample({super.key});

  @override
  State<LiftingStateUpExample> createState() => _LiftingStateUpExampleState();
}

class _LiftingStateUpExampleState extends State<LiftingStateUpExample> {
  double _sliderValue = 0.0;

  void _updateSliderValue(double value) {
    setState(() {
      _sliderValue = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Lifting State Up Example')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SliderWidget(
            sliderValue: _sliderValue,
            onChanged: _updateSliderValue,
          ),
          ValueDisplayWidget(value: _sliderValue),
        ],
      ),
    );
  }
}

class SliderWidget extends StatelessWidget {
  final double sliderValue;
  final ValueChanged<double> onChanged;

  const SliderWidget(
      {super.key, required this.sliderValue, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Slider(
      value: sliderValue,
      min: 0,
      max: 100,
      onChanged: onChanged,
    );
  }
}

class ValueDisplayWidget extends StatelessWidget {
  final double value;

  const ValueDisplayWidget({super.key, required this.value});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Text(
        'Slider Value: ${value.toStringAsFixed(2)}',
        style: const TextStyle(fontSize: 24),
      ),
    );
  }
}
