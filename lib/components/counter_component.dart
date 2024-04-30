import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CounterComponent extends StatefulWidget {
  final String title;
  final Function updateCounter;
  final int count;

  const CounterComponent(
      {super.key,
      required this.title,
      required this.count,
      required this.updateCounter});

  @override
  State<CounterComponent> createState() {
    return _CounterComponentState();
  }
}

class _CounterComponentState extends State<CounterComponent> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          Text(
            widget.title,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 40.0,
            ),
          ),
          Text(
            "${widget.count}",
            style: const TextStyle(color: Colors.white, fontSize: 70),
          ),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: ElevatedButton(
              onPressed: () {
                setState(() {
                  widget.updateCounter(1);
                });
              },
              child: const Text(
                "Add 1 Point",
                style: TextStyle(color: Colors.black),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: ElevatedButton(
              onPressed: () {
                setState(() {
                  widget.updateCounter(2);
                });
              },
              child: const Text(
                "Add 2 Point",
                style: TextStyle(color: Colors.black),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: ElevatedButton(
              onPressed: () {
                setState(() {
                  widget.updateCounter(3);
                });
              },
              child: const Text(
                "Add 3 Point",
                style: TextStyle(color: Colors.black),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
