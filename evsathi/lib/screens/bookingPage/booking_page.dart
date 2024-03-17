import 'package:flutter/material.dart';

class bookingPage extends StatefulWidget {
  const bookingPage({Key? key}) : super(key: key);

  @override
  State<bookingPage> createState() => _bookingPageState();
}

class _bookingPageState extends State<bookingPage> {
  TimeOfDay _timeOfDay1 = TimeOfDay(hour: 8, minute: 30);
  TimeOfDay _timeOfDay2 = TimeOfDay(hour: 8, minute: 30);

  bool isHovered1 = false;
  bool isHovered2 = false;

  void _showTimePicker1() {
    showTimePicker(
      context: context,
      initialTime: _timeOfDay1,
    ).then((value) {
      if (value != null) {
        setState(() {
          _timeOfDay1 = value;
        });
      }
    });
  }

  void _showTimePicker2() {
    showTimePicker(
      context: context,
      initialTime: _timeOfDay2,
    ).then((value) {
      if (value != null) {
        setState(() {
          _timeOfDay2 = value;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'AppBar',
          style: TextStyle(
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          // color: Colors.blue,
          child: Center(
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.green.shade100,
                      borderRadius: BorderRadius.circular(12.0)),
                  child: Center(
                    child: Text(
                      _timeOfDay1.format(context).toString(),
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontFamily: 'Roboto',
                        letterSpacing: 1.5,
                        shadows: [
                          Shadow(
                            color: Colors.black.withOpacity(0.5),
                            blurRadius: 2,
                            offset: Offset(1, 1),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                MouseRegion(
                  onEnter: (_) {
                    setState(() {
                      isHovered1 = true;
                    });
                  },
                  onExit: (_) {
                    setState(() {
                      isHovered1 = false;
                    });
                  },
                  child: Material(
                    child: InkWell(
                      onTap: _showTimePicker1,
                      child: Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: isHovered1
                                ? [Colors.greenAccent, Colors.blueAccent]
                                : [Colors.blue, Colors.green],
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                          ),
                          borderRadius: BorderRadius.circular(20.0),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 3,
                              blurRadius: 5,
                              offset: Offset(0, 3),
                            ),
                          ],
                        ),
                        padding: EdgeInsets.symmetric(
                            horizontal: 20.0, vertical: 10.0),
                        child: Text(
                          "Pick Time 1",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.green.shade100,
                      borderRadius: BorderRadius.circular(12.0)),
                  child: Center(
                    child: Text(
                      _timeOfDay2.format(context).toString(),
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontFamily: 'Roboto',
                        letterSpacing: 1.5,
                        shadows: [
                          Shadow(
                            color: Colors.black.withOpacity(0.5),
                            blurRadius: 2,
                            offset: Offset(1, 1),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                MouseRegion(
                  onEnter: (_) {
                    setState(() {
                      isHovered2 = true;
                    });
                  },
                  onExit: (_) {
                    setState(() {
                      isHovered2 = false;
                    });
                  },
                  child: Material(
                    child: InkWell(
                      onTap: _showTimePicker2,
                      child: Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: isHovered2
                                ? [Colors.greenAccent, Colors.blueAccent]
                                : [Colors.blue, Colors.green],
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                          ),
                          borderRadius: BorderRadius.circular(20.0),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 3,
                              blurRadius: 5,
                              offset: Offset(0, 3),
                            ),
                          ],
                        ),
                        padding: EdgeInsets.symmetric(
                            horizontal: 20.0, vertical: 10.0),
                        child: Text(
                          "Pick Time 2",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
