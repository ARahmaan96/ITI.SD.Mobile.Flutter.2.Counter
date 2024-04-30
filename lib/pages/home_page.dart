import 'package:counter/components/counter_component.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Map<String, int> counters = {"counter1": 0, "counter2": 0};

  void updateCounter(String name, int vlaue) {
    setState(() {
      int temp = counters[name] ?? 0;
      counters[name] = temp + vlaue;
    });
  }

  void setCounter(String name, int vlaue) {
    setState(() {
      counters[name] = vlaue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Counter App",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.grey[900],
        ),
        body: Container(
          color: Colors.grey[800],
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CounterComponent(
                    title: "Team 1",
                    count: counters["counter1"] ?? 0,
                    updateCounter: (int value) {
                      updateCounter("counter1", value);
                    },
                  ),
                  const SizedBox(
                    height: 300,
                    child: VerticalDivider(
                      width: 20,
                      color: Colors.white,
                      thickness: 2,
                    ),
                  ),
                  CounterComponent(
                      title: "Team 2",
                      count: counters["counter2"] ?? 0,
                      updateCounter: (int value) {
                        updateCounter("counter2", value);
                      }),
                ],
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: ElevatedButton(
                    onPressed: () {
                      setCounter("counter1", 0);
                      setCounter("counter2", 0);
                    },
                    child: const Text(
                      style: TextStyle(color: Colors.black),
                      "Reset All",
                    )),
              )
            ],
          ),
        ));
  }
}
