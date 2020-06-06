import 'package:flutter/material.dart';

/// @author WilliamRong firewings_82
/// @date :5/6/2020 6:33 PM

class Module {
  static get3Tab(State state, List<String> _ms, int _c) {
    return <Widget>[
      Row(
        children: <Widget>[
          Expanded(
            child: GestureDetector(
              onTap: () {
                state.setState(() {
                  return 0;
                });
              },
              child: Container(
                color: Color.fromARGB(255, 255, 255, 255),
                height: 50,
                width: double.infinity,
                child: Center(
                  child: Text(
                    _ms[0],
                    style: TextStyle(
                      fontSize: _c == 0 ? 20 : 18,
                      color: _c == 0
                          ? Color.fromARGB(255, 1, 1, 1)
                          : Color.fromARGB(255, 100, 100, 100),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: GestureDetector(
              onTap: () {
                state.setState(() {
                  return 1;
                });
              },
              child: Container(color: Color.fromARGB(255, 255, 255, 255),
                height: 50,
                width: double.infinity,
                child: Center(
                  child: Text(
                    _ms[1],
                    style: TextStyle(
                      fontSize: _c == 1 ? 20 : 18,
                      color: _c == 1
                          ? Color.fromARGB(255, 1, 1, 1)
                          : Color.fromARGB(255, 100, 100, 100),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: GestureDetector(
              onTap: () {
                state.setState(() {
                  return 2;
                });
              },
              child: Container(color: Color.fromARGB(255, 255, 255, 255),
                height: 50,
                width: double.infinity,
                child: Center(
                  child: Text(
                    _ms[2],
                    style: TextStyle(
                      fontSize: _c == 2 ? 20 : 18,
                      color: _c == 2
                          ? Color.fromARGB(255, 1, 1, 1)
                          : Color.fromARGB(255, 100, 100, 100),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      Row(
        children: <Widget>[
          Expanded(
            child: Container(
              height: 2,
              color: _c == 0 ? Colors.blue : Colors.black26,
              width: double.infinity,
            ),
          ),
          Expanded(
            child: Container(
              height: 2,
              color: _c == 1 ? Colors.blue : Colors.black26,
              width: double.infinity,
            ),
          ),
          Expanded(
            child: Container(
              height: 2,
              color: _c == 2 ? Colors.blue : Colors.black26,
              width: double.infinity,
            ),
          ),
        ],
      ),
    ];
  }
}