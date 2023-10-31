import 'package:flutter/material.dart';
import 'package:instant_task21_clinic_app/models/disease.dart';

class TypeOfDiseases extends StatefulWidget {
  const TypeOfDiseases({super.key});

  @override
  State<StatefulWidget> createState() {
    return TypeOfDiseasesState();
  }
}

class TypeOfDiseasesState extends State<TypeOfDiseases> {

  List<Disease> disease = [
    Disease(
      diseaseName: 'Cough &\ncold',
      noOfDoctors: '10 Doctors',
      diseaseImage: 'assets/cough.png',
      color: const Color(0xffEEBB8C)
    ),
    Disease(
        diseaseName: 'Heart &\nSpecialist',
        noOfDoctors: '17 Doctors',
        diseaseImage: 'assets/heart.png',
        color: const Color(0xffE39786)
    ),
    Disease(
        diseaseName: 'Diabetes\n check ',
        noOfDoctors: '24 Doctors',
        diseaseImage: 'assets/Blood_Sugar_.png',
        color: const Color(0xffFDC2B5)
    ),
  ];

  @override
  Widget build(BuildContext context) {

    final screenWidth= MediaQuery.of(context).size.width;
    final screenHeight= MediaQuery.of(context).size.height;

    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: disease.length,
      itemBuilder: (context,index){
        return Container(
          padding: const EdgeInsets.only(
            top: 25,
            left: 15,
            right: 15
          ),
          margin: const EdgeInsets.all(8),
          height: screenHeight * 0.33,
          width: screenWidth * 0.38,
          decoration: BoxDecoration(
              color: disease[index].color,
              borderRadius: BorderRadius.circular(15)
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // disease name
              Text(
                '${disease[index].diseaseName}',
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.w600
                ),
              ),
              // number of doctors
              Text(
                '\n${disease[index].noOfDoctors}',
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w400
                ),
              ),
              const Spacer(),
              // disease photo
              Center(
                child: Image.asset(
                    '${disease[index].diseaseImage}',
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
