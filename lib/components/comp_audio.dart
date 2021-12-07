import 'package:flutter/material.dart';

class CompAudio extends StatefulWidget {
  const CompAudio({Key? key}) : super(key: key);

  @override
  _CompAudioState createState() => _CompAudioState();
}

class _CompAudioState extends State<CompAudio> {
  double _currentSliderValue = 0;
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: const Color(0xFF084769),
          width: 3,
        ),
        borderRadius: const BorderRadius.all(
          Radius.circular(12),
        ),
      ),
      width: mediaQuery.size.width * .72,
      child: Center(
        child: Row(
          children: [
            IconButton(
              iconSize: 40,
              color: const Color(0xFF084769),
              onPressed: () {},
              icon: const Icon(
                Icons.play_arrow,
              ),
            ),
            Slider.adaptive(
              activeColor: const Color(0xFF084769),
              inactiveColor: Colors.grey[350],
              value: _currentSliderValue,
              onChanged: (value) {
                setState(
                  () {
                    _currentSliderValue = value;
                  },
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
