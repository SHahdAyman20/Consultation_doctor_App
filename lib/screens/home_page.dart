import 'package:flutter/material.dart';
import 'package:instant_task21_clinic_app/widgets/doctor_info.dart';
import 'package:instant_task21_clinic_app/widgets/search_widget.dart';
import 'package:instant_task21_clinic_app/widgets/type_of_disease.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);


  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final backgroundColor = const Color(0xffFCF1E8);
  final textColor = const Color(0xfff16d06);
  String? selectedText;

  @override
  void initState() {
    super.initState();
    selectedText = '';
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight= MediaQuery.of(context).size.height;

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: screenHeight* 0.08,
              ),
              const Text(
                'Find your\nConsultation',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(height: 20),
              SearchTextField(),
              const SizedBox(height: 20),
              const Text(
                ' Categories',
                style: TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 10),
              // people age categories
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.08,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    ageCategoryList('Adult'),
                    ageCategoryList('Children'),
                    ageCategoryList('Men'),
                    ageCategoryList('Women'),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              // disease categories
              SizedBox(
                height: screenHeight * 0.35,
                  child: const TypeOfDiseases()
              ),
              const SizedBox(height: 15),
              const Text(
                ' Doctors',
                style: TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(
                height: screenHeight * 0.11,
                  child:const DoctorsList()
              )
              
            ],
          ),
        ),
      ),
    );
  }

  Widget ageCategoryList(String text) {
    final screenWidth= MediaQuery.of(context).size.width;
    final screenHeight= MediaQuery.of(context).size.height;

    final isSelected = selectedText == text;

    return InkWell(
      onTap: () {
        setState(() {
          selectedText = text;
        });
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: isSelected ? backgroundColor : Colors.white,
        ),
        alignment: Alignment.center,
        height: screenHeight * 0.05,
        width: screenWidth * 0.2,
        margin: const EdgeInsets.all(8),
      //  padding: const EdgeInsets.all(8),
        child: Text(
          text,
          style: TextStyle(
            color: isSelected ? textColor : Colors.black,
            fontSize: 16,
            fontWeight: FontWeight.w400
          ),
        ),
      ),
    );
  }
}