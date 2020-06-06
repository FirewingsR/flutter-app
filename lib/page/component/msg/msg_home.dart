import 'package:flutter/material.dart';
import 'package:flutter_wyz/page/component/msg/msg_list.dart';
import 'package:flutter_wyz/page/component/msg/msg_my.dart';
import 'package:flutter_wyz/page/component/msg/msg_my_care.dart';
import 'package:flutter_wyz/page/ui/module.dart';

class MsgHome extends StatefulWidget {
  @override
  _MsgHomeState createState() => _MsgHomeState();
}

class _MsgHomeState extends State<MsgHome> {
  final List<int> _m = [0, 1, 2];
  final List<String> _ms = ['关注', '所有', '我的'];
  int _c = 1;

  getContent(int c) {
    if (c == 0) {
      return MsgMyCare();
    } else if (c == 1) {
      return MsgList();
    } else if (c == 2) {
      return MsgMy();
    }
  }

  @override
  void setState(fn) {
    super.setState(fn);
//    _c = fn() as int;
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> l = Module.get3Tab(this, _ms, _c);
    return Column(
      children: <Widget>[
//        l[0],
//        l[1],
        Expanded(
          child: Container(
            padding: EdgeInsets.only(top: 3),
            color: Color.fromARGB(255, 250, 250, 250),
            width: double.infinity,
            // child: getContent(_c),
            child: getContent(1),
          ),
        )
      ],
    );
  }
}
