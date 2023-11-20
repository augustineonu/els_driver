import 'package:flutter/material.dart';

class CustomTimeLineWidget extends StatelessWidget {
  final TextEditingController textController;
  final String time;
  final IconData icon;
  final bool isFirst;
  final bool isLast;

  CustomTimeLineWidget({
    required this.textController,
    required this.time,
    required this.icon,
    this.isFirst = false,
    this.isLast = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment:
            isFirst ? CrossAxisAlignment.start : CrossAxisAlignment.end,
        children: [
          Column(
            children: [
              if (!isFirst)
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Container(
                    width: 2.0,
                    height: 20.0,
                    child: VerticalDivider(
                      color: Colors.white,
                      thickness: 2,
                      width: 10,
                    ),
                  ),
                ),
              Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(3000),
                      color: Color(0xff574928)),
                  child: Center(
                      child: Container(
                    height: 20,
                    width: 20,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(3000),
                        color: Theme.of(context).primaryColor),
                    child: Icon(icon, size: 16.0, color: Colors.black),
                  ))),
            ],
          ),
          SizedBox(width: 20.0),
          Container(
            child: Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 50,
                    child: TextField(
                      controller: textController,
                      // textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                          ),
                      decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(12)),
                            borderSide: BorderSide(
                              color: Color(0xff1f222a),
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(12)),
                            borderSide: BorderSide(
                                color: Theme.of(context).primaryColor),
                          ),
                          hintText: 'Enter text',
                          fillColor: Color(0xff1f222a),
                          hintStyle: Theme.of(context)
                              .textTheme
                              .bodySmall!
                              .copyWith(color: Colors.grey)),
                    ),
                  ),
                
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
