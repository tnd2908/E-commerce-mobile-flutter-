import 'package:flutter/material.dart';
import 'package:flutter_project/dummy/data.dart';

class EventList extends StatelessWidget {
  const EventList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(16, 10, 16, 0),
      margin: const EdgeInsets.fromLTRB(0, 0, 0, 10),
      width: MediaQuery.of(context).size.width,
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Khuyến mãi',
              style: TextStyle(fontWeight: FontWeight.bold)),
          SizedBox(
            height: 180,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: event.length,
              itemBuilder: (context, index) => Container(
                  width: 280,
                  padding: const EdgeInsets.all(5),
                  margin:
                      const EdgeInsets.symmetric(horizontal: 0, vertical: 10),
                  child: Container(
                    foregroundDecoration: BoxDecoration(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(7)),
                        image: DecorationImage(
                          image: NetworkImage(event[index]),
                          fit: BoxFit.fill,
                        )),
                  )),
            ),
          )
        ],
      ),
    );
  }
}
