import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {


  int marks = 99;
  double percentage = 89.99;
  String studentName = "Reddy";
  bool isPassed = false;

  //1. List - its a collection of similar data type values.
  //2. Index starts from zero.
  //3. List will allow duplicate values
  //4. List is in ordered way
  //4. count of list = "length"
  //                       0   1   2   3   4   5
  List<int> listOfMarks = [21, 32, 23, 45, 68, 23];
  List<double> listOfPercentages = [21.4, 43.2, 52.3, 74.5, 16.8, 58.9];
  List<String> listOfNames = ["Krishna", "Ram", "Basha", "Suresh", "Ramesh", "satish", "ramya", "abc", "bindu"]; // String List
  List<bool> listOfStatus = [true, false, true, true, false];


  //1. Map - Key value pairs
  //2. Using key we can fetch the value
  //3. its in-ordered way
  //4. map will not allow duplicate keys
  //5. to find count use length property
  Map<String, int> studentMarks = {"Krishna" : 27, "Basha" : 78, "Ram" : 88, "Reddy" : 35};
  Map<String, dynamic> studentsList = {"Suresh" : [12, 76, 89, 54], "satish": {"maths" : 23, "physics" : 88}, "ramesh" : 97.9};

  @override
  Widget build(BuildContext context) {

    var ramPercentageValue = listOfPercentages[1];
    print("oramPercentageValue is $ramPercentageValue");
    print("total Percentages count is ${listOfPercentages.length}");

    for(var studentName in listOfNames){
      print("each student name is $studentName");
    }

    print("last student name is ${listOfNames[listOfNames.length - 1]}");

    /*
    1. Practice list
    2. Insert value in particular index
    3. delete value in particular index
    4. update value in particular index
    5. add two list values (merge 2 lists in single list)
     */
    //========================================================

    int? bashaMarks = studentMarks["Basha123"];
    print("basha marks are $bashaMarks");


    return const Placeholder();
  }


}
