import 'package:flutter/material.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: summaryData.map(
        (data) {
          return Row(
            children: [
              Container(
                  width: 30,
                  height: 30,
                  padding: EdgeInsets.all(5),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: (data['user_answer'] == data['correct_answer']) ? Colors.green : Colors.red,
                  ),
                  child: Text(
                    ((data['question_index'] as int) + 1).toString(),style: TextStyle(fontSize: 20),
                  )),const SizedBox(
                      width: 15,
                    ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(data['question'] as String,style: TextStyle(color: Colors.white),),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(data['user_answer'] as String,style: TextStyle(color: Color.fromARGB(255, 255, 238, 0)),),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(data['correct_answer'] as String,style: TextStyle(color: Colors.green),),const SizedBox(
                      height: 5,
                    ),const SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              )
            ],
          );
        },
      ).toList(),
    );
  }
}
