import 'package:componentesflutter/theme/app_theme.dart';
import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double _sliderValue = 100;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Slider and Check'),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Slider.adaptive(
            min: 40,
            max: 400,
            activeColor: AppTheme.primary,
            value: _sliderValue,
            onChanged: (value) {
              _sliderValue = value;
              setState(() {});
            },
          ),
        ],
      ),
    );
  }
}
